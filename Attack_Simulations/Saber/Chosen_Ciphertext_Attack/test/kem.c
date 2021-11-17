#include "../api.h"
#include "../poly.h"
#include "../rng.h"
#include "../SABER_indcpa.h"
#include "../SABER_params.h"
#include "../verify.h"

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

uint16_t u_coeff, v_coeff;
uint16_t u_poly_index,u_coeff_index;
uint8_t global_first_bit;
uint16_t secret_key_module[SABER_L][SABER_N];
uint16_t secret_coeff[SABER_L][SABER_N];

int extra_trial_no;

#define h1_new (1 << (SABER_EQ - SABER_EP - 1))
#define h2_new ((1 << (SABER_EP - 2)) - (1 << (SABER_EP - SABER_ET - 1)) + (1 << (SABER_EQ - SABER_EP - 1)))

#define NTESTS 50


#if SABER_L == 2

int choice_u[10] = {35, 23, 18, 14, 30, 20, 15, 12, 959, 60};
int choice_v[10] = {1, 1, 1, 1, 6, 6, 6, 6, 6, 6};

int zero_rep = 4;
int one_rep = 3;

int oracle_responses[10][11] = {
                    {1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0},
                    {1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0},
                    {1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1},
                    {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
                    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                    {0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0}
                  };

#elif SABER_L == 3

	int choice_u[8] = {28, 37, 19, 13, 10, 14, 10, 7};
	int choice_v[8] = {4, 3, 3, 3, 3, 12, 12, 12};

	int zero_rep = 3;
	int one_rep = 4;

	int oracle_responses[8][9] = {
	                    {1, 1, 1, 1, 1, 0, 0, 0, 0},
	                    {1, 1, 1, 1, 0, 0, 0, 0, 0},
	                    {1, 1, 1, 0, 0, 0, 0, 0, 0},
	                    {1, 1, 0, 0, 0, 0, 0, 0, 0},
	                    {1, 0, 0, 0, 0, 0, 0, 0, 0},
	                    {0, 0, 0, 0, 0, 0, 1, 1, 1},
	                    {0, 0, 0, 0, 0, 0, 0, 1, 1},
	                    {0, 0, 0, 0, 0, 0, 0, 0, 1}
										};

#elif SABER_L == 4


int choice_u[6] = {4, 13, 7, 5, 2, 7};
int choice_v[6] = {16, 15, 15, 15, 48, 49};

int zero_rep = 2;
int one_rep = 3;

int oracle_responses[6][7] = {
                    {1, 1, 1, 1, 0, 0, 0},
                    {1, 1, 1, 0, 0, 0, 0},
                    {1, 1, 0, 0, 0, 0, 0},
                    {1, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 1, 1},
                    {0, 0, 0, 0, 0, 0, 1}
                  };

#endif

static int shift_lfsr(unsigned int *lfsr, unsigned int polynomial_mask)
{
    int feedback;

    feedback = *lfsr & 1;
    *lfsr >>= 1;
    if(feedback == 1)
        *lfsr ^= polynomial_mask;
    return *lfsr;
}

static int get_random(void)
{
    int temp;
    unsigned int POLY_MASK_HERE_1 = 0xABABABAB;
    unsigned int POLY_MASK_HERE_2 = 0x55BBEEFF;
    static unsigned int lfsr_1 = 0x55AAEEFF;
    static unsigned int lfsr_2 = 0xFFAA8844;
    shift_lfsr(&lfsr_1, POLY_MASK_HERE_1);
    shift_lfsr(&lfsr_2, POLY_MASK_HERE_2);
    temp = (shift_lfsr(&lfsr_1, POLY_MASK_HERE_1) ^ shift_lfsr(&lfsr_2, POLY_MASK_HERE_2)) & 0XFF;
    // printf("%02x\n",temp);
    return (temp);
}

static int test_kem_cca()
{

  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t ss_a[CRYPTO_BYTES], ss_b[CRYPTO_BYTES];
  uint64_t i, j;

  unsigned char entropy_input[48];

	for (i=0; i<48; i++)
    	entropy_input[i] = get_random();
	randombytes_init(entropy_input, NULL, 256);

  //Generation of secret key sk and public key pk pair
  crypto_kem_keypair(pk, sk);

  uint8_t bit_now;
  uint8_t bit_now_start;
  uint8_t bit_now_array[20];
  uint8_t touched = 0;
  uint16_t secret_now;

  int queries = 0;


  int succ_count = 0;
  int found_coeff = 0;

  for(i = 0; i < SABER_L; i++)
	{
    u_poly_index = i;

		for(j = 0; j < SABER_N; j++)
		{
      found_coeff = 0;

      extra_trial_no = 0;

      for(int hh = 0; hh < 20; hh++)
        bit_now_array[hh] = 100;

      touched = 0;
      u_coeff_index = j;

      u_coeff = choice_u[0];
      v_coeff = choice_v[0];

      crypto_kem_enc_attack(ct, ss_a, pk);
      crypto_kem_dec(ss_b, ct, sk);

      queries = queries+1;

      bit_now_start = global_first_bit;
      bit_now_array[0] = bit_now_start;

      int rep_to_do;
      int start_rep;

      if(bit_now_start == 1)
      {
        rep_to_do = one_rep;
        start_rep = 1;
      }
      else
      {
        rep_to_do = zero_rep;
        start_rep = one_rep+1;
      }

      for(int repp = 0; repp < rep_to_do; repp++)
      {
        u_coeff = choice_u[start_rep+repp];
        v_coeff = choice_v[start_rep+repp];

        crypto_kem_enc_attack(ct, ss_a, pk);
        crypto_kem_dec(ss_b, ct, sk);
        queries = queries+1;

        bit_now = global_first_bit;
        bit_now_array[repp+1] = bit_now;

        #if SABER_L == 3

        if(bit_now_start == 1)
        {

          if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1 && bit_now_array[4] == 1)
          {
            secret_now = -4;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1 && bit_now_array[4] == 0)
          {
            secret_now = -3;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 0)
          {
            secret_now = -2;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = -1;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 0)
          {
            secret_now = 0;
            touched = 1;
            break;
          }

        }

        else
        {

          if(bit_now_array[0] == 0 && bit_now_array[1] == 0)
          {
            secret_now = 1;
            touched = 1;
            break;
          }
          if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = 2;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 0)
          {
            secret_now = 3;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1)
          {
            secret_now = 4;
            touched = 1;
            break;
          }

        }


        #elif SABER_L == 4


        if(bit_now_start == 1)
        {
          if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1)
          {
            secret_now = -3;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 0)
          {
            secret_now = -2;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = -1;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 0)
          {
            secret_now = 0;
            touched = 1;
            break;
          }
        }
        else
        {

          if(bit_now_array[0] == 0 && bit_now_array[1] == 0)
          {
            secret_now = 1;
            touched = 1;
            break;
          }
          if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = 2;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1)
          {
            secret_now = 3;
            touched = 1;
            break;
          }

        }

        #elif SABER_L == 2

        if(bit_now_start == 1)
        {
          if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1)
          {
            secret_now = -5;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 0)
          {
            secret_now = -4;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = -3;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 1 && bit_now_array[1] == 0)
          {
            secret_now = -2;
            touched = 1;
            break;
          }
        }
        else
        {

          if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
          {
            secret_now = 2;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 0)
          {
            secret_now = 3;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1 && bit_now_array[4] == 0)
          {
            secret_now = 4;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 1 && bit_now_array[3] == 1 && bit_now_array[4] == 1)
          {
            secret_now = 5;
            touched = 1;
            break;
          }
        }

        #endif

      }


      if(touched == 1)
      {
        secret_coeff[i][SABER_N - 1 - j] = secret_now;
        continue;
      }
      else
      {
        secret_coeff[i][SABER_N - 1 - j] = 999;
        continue;
      }

    }

    #if (SABER_L == 3 || SABER_L == 4)

    for(int yr1 = 0; yr1 < SABER_N; yr1++)
    {
      if(secret_key_module[i][yr1] == secret_coeff[i][yr1])
        succ_count = succ_count+1;
    }

    printf("Secret Coeffs...\n");
    for(int yr1 = 0; yr1 < SABER_N; yr1++)
    {
      printf("%d, ", secret_coeff[i][yr1]);
    }
    printf("\n");

    #endif

  }


  // I need to repeat again for -1,0 and 1....

  #if SABER_L == 2

  for(i = 0; i < SABER_L; i++)
  {
    u_poly_index = i;

    for(j = 0; j < SABER_N; j++)
    {

      u_coeff_index = j;

      if(secret_coeff[i][SABER_N - 1 - j] == 999)
      {
        int bit_1, bit_2;

        u_coeff = choice_u[8];
        v_coeff = choice_v[8];

        extra_trial_no = 8;
        crypto_kem_enc_attack(ct, ss_a, pk);
        crypto_kem_dec(ss_b, ct, sk);

        queries = queries+1;

        bit_1 = global_first_bit;

        u_coeff = choice_u[9];
        v_coeff = choice_v[9];

        extra_trial_no = 9;
        crypto_kem_enc_attack(ct, ss_a, pk);
        crypto_kem_dec(ss_b, ct, sk);

        queries = queries+1;

        bit_2 = global_first_bit;

        if(bit_1 == 1 && bit_2 == 0)
        {
          secret_now = -1;
          queries = queries-1;
        }
        else if(bit_1 == 0 && bit_2 == 0)
        {
          secret_now = 0;
        }
        else if(bit_1 == 0 && bit_2 == 1)
        {
          secret_now = 1;
        }

        secret_coeff[i][SABER_N - 1 - j] = secret_now;

      }

    }

    for(int yr1 = 0; yr1 < SABER_N; yr1++)
    {
      if(secret_key_module[i][yr1] == secret_coeff[i][yr1])
        succ_count = succ_count+1;
    }

    printf("Secret Coeffs...\n");
    for(int yr1 = 0; yr1 < SABER_N; yr1++)
    {
      printf("%d, ", secret_coeff[i][yr1]);
    }
    printf("\n");

  }

  #endif


  if(succ_count == SABER_L*SABER_N)
  {
    printf("Success...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(SABER_L*SABER_N)));
    printf("****************************************************************************\n");
  }
  else
  {
    printf("Failure...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(SABER_L*SABER_N)));
    printf("****************************************************************************\n");
  }

  return queries;

}


uint16_t bits_conv(uint16_t a, uint8_t i, uint8_t j)
{
  uint16_t output;
  output = a >> (i-j) & ((1 >> j) - 1);
  return output;
}

int main()
{

  int queries;

  double average_queries = 0;
  // For Doing Attack...
  for(int i = 0; i < NTESTS; i++)
  {

   printf("Attack Test: %d\n", i);
	 queries = test_kem_cca();

   if(i == 0)
    average_queries = queries;
   else
    average_queries = average_queries + (double)(queries - average_queries)/(i+1);

    printf("Queries: %f, Average Queries: %f\n",(float)queries,average_queries);

  }



  // // For Finding Ciphertexts...
  // identify_chosen_ciphertexts();
  // identify_chosen_ciphertexts_for_collisions();

	return 0;
}


int identify_chosen_ciphertexts()
{

  int limit = (SABER_MU)/2; // For SABER... For LightSABER = 5 and FireSABER = 3...
  // int limit = 1; // For SABER... For LightSABER = 5 and FireSABER = 3...
  int choice_s;

  int low_limit_u = 0;
  int low_limit_v = 0;
  int s_temp;
  int found_u = 0;

  int sum_bit_low_array, sum_bit_high_array;

  int bit_array_final[2*limit+1];
  int bit_array_others[2*limit+1];

  int high_limit_u = (1 << (SABER_EP))-1;
  int high_limit_v = (1 << (SABER_ET))-1;

  uint16_t choice_u;
  uint16_t choice_v, choice_v_other;

  uint16_t temp;

  int sum_found_u = 0;

  int ham_wt_touch = 0;
  for(int ham_wt = 1; ham_wt <= (1<<(2*limit+1)); ham_wt++)
  {

    ham_wt_touch = 0;
    // printf("************************* HW = %d **************************\n",ham_wt);

    for(choice_u = low_limit_u; choice_u <= high_limit_u; choice_u++)
    {
      // printf("Choice U: %d\n",choice_u);

      for(choice_v_other = 0; choice_v_other <= 0; choice_v_other++)
      {

      for(int ty = 0; ty < 2*limit+1;ty++)
        bit_array_final[ty] = 0;

      found_u = 0;

      sum_bit_low_array = 0;
      sum_bit_high_array = 0;

      for(choice_s = -1*limit; choice_s <= limit; choice_s++)
      {

        s_temp = choice_s;
        s_temp = (choice_u * s_temp);

        if(s_temp < 0)
          s_temp = (1 << (SABER_EP)) + s_temp;

        temp = s_temp;
        temp = (((temp + h2_new - (choice_v_other << (SABER_EP - SABER_ET)))) >> (SABER_EP - 1))&0x1;
        sum_bit_low_array = sum_bit_low_array + temp;
        bit_array_others[choice_s+limit] = temp;
      }

      // if(sum_bit_low_array == 0)
      if(sum_bit_low_array == 0)
      {
        found_u = 1;
        sum_found_u = sum_found_u+1;
      }

      if(found_u == 1)
      {

        for(choice_v = low_limit_v; choice_v <= high_limit_v; choice_v++)
        {

          for(choice_s = -1*limit; choice_s <= limit; choice_s++)
          // for(choice_s = -1; choice_s <= 1; choice_s++)
          {

            s_temp = choice_s;
            s_temp = (choice_u * s_temp);

            if(s_temp < 0)
              s_temp = (1 << (SABER_EP)) + s_temp;

            temp = s_temp;
            temp = (((temp + h2_new - (choice_v << (SABER_EP - SABER_ET)))) >> (SABER_EP - 1))&0x1;
            bit_array_final[choice_s+limit] = temp;
          }

          sum_bit_low_array = 0;
          for(choice_s = 0; choice_s < (2*limit+1); choice_s++)
            sum_bit_low_array = sum_bit_low_array + (1 << (choice_s))*bit_array_final[choice_s];

          if(sum_bit_low_array == ham_wt)
          {
            printf("Choice_u, Choice_v: %d, %d\n",choice_u, choice_v);
            printf("Oracle Responses...\n");
            for(int ry=0;ry<2*limit+1;ry++)
                printf("%d, ",bit_array_final[ry]);
            printf("\n");
            printf("Non Zero Responses...\n");
            for(int ry=0;ry<2*limit+1;ry++)
                printf("%d, ",bit_array_others[ry]);
            printf("\n");

            // sum_bit_low_array = 0;
            // for(choice_s = 0; choice_s < (2*limit+1); choice_s++)
            // {
            //   sum_bit_low_array = sum_bit_low_array + (1 << (choice_s))*bit_array_final[choice_s];
            //   printf("%d/%d, ",bit_array_final[choice_s],sum_bit_low_array);
            // }
            // printf("\n");

            ham_wt_touch = 1;
            break;
          }

        }
      }

      if(ham_wt_touch == 1)
        break;
    }

    if(ham_wt_touch == 1)
      break;

    }

    // if(ham_wt_touch == 1)
    //   break;
  }

  printf("h2_new: %d\n",h2_new);

  return 0;
}



int identify_chosen_ciphertexts_for_collisions()
{

  int limit = (SABER_MU)/2; // For SABER... For LightSABER = 5 and FireSABER = 3...
  // int limit = 1; // For SABER... For LightSABER = 5 and FireSABER = 3...
  int choice_s;

  int low_limit_u = 0;
  int low_limit_v = 0;
  int s_temp;
  int found_u = 0;

  int sum_bit_low_array, sum_bit_high_array;

  int bit_array_final[2*limit+1];
  int bit_array_others[2*limit+1];

  int high_limit_u = (1 << (SABER_EP))-1;
  int high_limit_v = (1 << (SABER_ET))-1;

  uint16_t choice_u;
  uint16_t choice_v, choice_v_other;

  uint16_t temp;

  int sum_found_u = 0;

  int ham_wt_touch = 0;
  for(int ham_wt = 1; ham_wt <= (1<<(2*limit+1)); ham_wt++)
  {

    ham_wt_touch = 0;
    // printf("************************* HW = %d **************************\n",ham_wt);

    for(choice_u = low_limit_u; choice_u <= high_limit_u; choice_u++)
    {
      // printf("Choice U: %d\n",choice_u);

      for(choice_v_other = 0; choice_v_other <= 0; choice_v_other++)
      {

      for(int ty = 0; ty < 2*limit+1;ty++)
        bit_array_final[ty] = 0;

      found_u = 0;

      sum_bit_low_array = 0;
      sum_bit_high_array = 0;

      for(choice_s = -1*limit; choice_s <= limit; choice_s++)
      {

        s_temp = choice_s;
        s_temp = (choice_u * s_temp);

        if(s_temp < 0)
          s_temp = (1 << (SABER_EP)) + s_temp;

        temp = s_temp;
        temp = (((temp + h2_new - (choice_v_other << (SABER_EP - SABER_ET)))) >> (SABER_EP - 1))&0x1;
        sum_bit_low_array = sum_bit_low_array + temp;
        bit_array_others[choice_s+limit] = temp;
      }

      if(sum_bit_low_array < 4)
      {
        found_u = 1;
        sum_found_u = sum_found_u+1;
      }

      if(found_u == 1)
      {

        for(choice_v = low_limit_v; choice_v <= high_limit_v; choice_v++)
        {

          // for(choice_s = -1*limit; choice_s <= limit; choice_s++)
          for(choice_s = -1; choice_s <= 1; choice_s++)
          {

            s_temp = choice_s;
            s_temp = (choice_u * s_temp);

            if(s_temp < 0)
              s_temp = (1 << (SABER_EP)) + s_temp;

            temp = s_temp;
            temp = (((temp + h2_new - (choice_v << (SABER_EP - SABER_ET)))) >> (SABER_EP - 1))&0x1;
            bit_array_final[choice_s+limit] = temp;
          }

          sum_bit_low_array = 0;
          for(choice_s = 0; choice_s < (2*limit+1); choice_s++)
            sum_bit_low_array = sum_bit_low_array + (1 << (choice_s))*bit_array_final[choice_s];

          if(sum_bit_low_array == ham_wt)
          {
            printf("Choice_u, Choice_v: %d, %d\n",choice_u, choice_v);
            printf("Oracle Responses...\n");
            for(int ry=0;ry<2*limit+1;ry++)
                printf("%d, ",bit_array_final[ry]);
            printf("\n");
            printf("Non Zero Responses...\n");
            for(int ry=0;ry<2*limit+1;ry++)
                printf("%d, ",bit_array_others[ry]);
            printf("\n");

            // sum_bit_low_array = 0;
            // for(choice_s = 0; choice_s < (2*limit+1); choice_s++)
            // {
            //   sum_bit_low_array = sum_bit_low_array + (1 << (choice_s))*bit_array_final[choice_s];
            //   printf("%d/%d, ",bit_array_final[choice_s],sum_bit_low_array);
            // }
            // printf("\n");

            ham_wt_touch = 1;
            break;
          }

        }
      }

      if(ham_wt_touch == 1)
        break;
    }

    if(ham_wt_touch == 1)
      break;

    }

    // if(ham_wt_touch == 1)
    //   break;
  }

  printf("h2_new: %d\n",h2_new);

  return 0;
}
