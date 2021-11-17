#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdint.h>
#include <math.h>
#include "api.h"
#include "reduce.h"
#include "kem.h"
#include "randombytes.h"

#include "Attacker.h"

#include "params.h"
#include "indcpa.h"
#include "verify.h"
#include "symmetric.h"

int16_t u_coeff, v_coeff;
int16_t u_poly_index,u_coeff_index;
uint8_t global_first_bit;
int16_t secret_key_module[KYBER_K][KYBER_N];

#define NTESTS 100

#if KYBER_K == 2

int16_t choice_u[6] = {207, 2, 106, 70, 106, 70};
int16_t choice_v[6] = {937, 729, 521, 521, -728, -728};

int zero_rep = 2;
int one_rep = 3;

int16_t oracle_responses[6][7] = {
                    {1, 1, 1, 1, 0, 0, 0},
                    {1, 1, 1, 0, 0, 0, 0},
                    {1, 1, 0, 0, 0, 0, 0},
                    {1, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 1, 1},
                    {0, 0, 0, 0, 0, 0, 1}
                   };

#elif KYBER_K == 3

int16_t choice_u[4] = {207, 2, 106, 106};
int16_t choice_v[4] = {937, 729, 521, -728};

int zero_rep = 1;
int one_rep = 2;

int16_t oracle_responses[4][5] = {
                    {1, 1, 1, 0, 0},
                    {1, 1, 0, 0, 0},
                    {1, 0, 0, 0, 0},
                    {0, 0, 0, 0, 1}
                   };

#elif KYBER_K == 4

int16_t choice_u[4] = {104, 1, 53, 53};
int16_t choice_v[4] = {885, 781, 677, -780};

int zero_rep = 1;
int one_rep = 2;

int16_t oracle_responses[4][5] = {
                    {1, 1, 1, 0, 0},
                    {1, 1, 0, 0, 0},
                    {1, 0, 0, 0, 0},
                    {0, 0, 0, 0, 1}
                   };

#endif


#if KYBER_K == 2
  #define KYBER_DU 10
  #define KYBER_DV 4
#elif KYBER_K == 3
  #define KYBER_DU 10
  #define KYBER_DV 4
#elif KYBER_K == 4
  #define KYBER_DU 11
  #define KYBER_DV 5
#endif

static int test_keys()
{
  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t key_a[CRYPTO_BYTES];
  uint8_t key_b[CRYPTO_BYTES];

  //Alice generates a public key
  crypto_kem_keypair(pk, sk);

  //Bob derives a secret key and creates a response
  crypto_kem_enc(ct, key_b, pk);

  //Alice uses Bobs response to get her shared key
  crypto_kem_dec(key_a, ct, sk);

  if(memcmp(key_a, key_b, CRYPTO_BYTES)) {
    printf("ERROR keys\n");
    return 1;
  }

  return 0;
}

static int test_invalid_sk_a()
{
  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t key_a[CRYPTO_BYTES];
  uint8_t key_b[CRYPTO_BYTES];

  //Alice generates a public key
  crypto_kem_keypair(pk, sk);

  //Bob derives a secret key and creates a response
  crypto_kem_enc(ct, key_b, pk);

  //Replace secret key with random values
  randombytes(sk, CRYPTO_SECRETKEYBYTES);

  //Alice uses Bobs response to get her shared key
  crypto_kem_dec(key_a, ct, sk);

  if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
    printf("ERROR invalid sk\n");
    return 1;
  }

  return 0;
}

static int test_invalid_ciphertext()
{
  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t key_a[CRYPTO_BYTES];
  uint8_t key_b[CRYPTO_BYTES];
  uint8_t b;
  size_t pos;

  do {
    randombytes(&b, sizeof(uint8_t));
  } while(!b);
  randombytes((uint8_t *)&pos, sizeof(size_t));

  //Alice generates a public key
  crypto_kem_keypair(pk, sk);

  //Bob derives a secret key and creates a response
  crypto_kem_enc(ct, key_b, pk);

  //Change some byte in the ciphertext (i.e., encapsulated key)
  ct[pos % CRYPTO_CIPHERTEXTBYTES] ^= b;

  //Alice uses Bobs response to get her shared key
  crypto_kem_dec(key_a, ct, sk);

  if(!memcmp(key_a, key_b, CRYPTO_BYTES)) {
    printf("ERROR invalid ciphertext\n");
    return 1;
  }

  return 0;
}

// int main(void)
// {
//   // unsigned int i;
//   // int r;
//   //
//   // for(i=0;i<NTESTS;i++) {
//   //   r  = test_keys();
//   //   // r |= test_invalid_sk_a();
//   //   // r |= test_invalid_ciphertext();
//   //   if(r)
//   //     return 1;
//   // }
//   //
//   // printf("CRYPTO_SECRETKEYBYTES:  %d\n",CRYPTO_SECRETKEYBYTES);
//   // printf("CRYPTO_PUBLICKEYBYTES:  %d\n",CRYPTO_PUBLICKEYBYTES);
//   // printf("CRYPTO_CIPHERTEXTBYTES: %d\n",CRYPTO_CIPHERTEXTBYTES);
//
//   identify_ciphertexts();
//
//   return 0;
// }




static int test_kem_cca()
{

  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t ss_a[CRYPTO_BYTES], ss_b[CRYPTO_BYTES], ss_attack[CRYPTO_BYTES];
  uint64_t i, j;

  unsigned char buf_attacker[2*KYBER_SYMBYTES];
  unsigned char kr_attacker[2*KYBER_SYMBYTES]; // Will contain key, coins

  // unsigned char entropy_input[48];
  //
	// for (i=0; i<48; i++)
  //   	entropy_input[i] = get_random();
	// randombytes_init(entropy_input, NULL, 256);

  //Generation of secret key sk and public key pk pair
  crypto_kem_keypair(pk, sk);

  for(int we = 0; we < KYBER_SYMBYTES; we++)
    buf_attacker[we] = ATTACKER_KEY_TRIAL[we];

  /* Multitarget countermeasure for coins + contributory KEM */
  hash_h(buf_attacker+KYBER_SYMBYTES, pk, KYBER_PUBLICKEYBYTES);


  uint8_t bit_now;
  uint8_t bit_now_start;
  uint8_t bit_now_array[20];
  uint8_t touched = 0;
  int16_t secret_coeff[KYBER_K][KYBER_N];
  int16_t secret_now;

  int queries = 0;


  int succ_count = 0;
  int found_coeff = 0;

  for(i = 0; i < KYBER_K; i++)
	{
    u_poly_index = i;

		for(j = 0; j < KYBER_N; j++)
		{
      // printf("j: %d\n", j);

      found_coeff = 0;

      for(int hh = 0; hh < 20; hh++)
        bit_now_array[hh] = 100;

      touched = 0;
      u_coeff_index = j;

      u_coeff = choice_u[0];
      v_coeff = choice_v[0];

      crypto_kem_enc_attack(ct, ss_a, pk);
      crypto_kem_dec(ss_b, ct, sk);

      queries = queries+1;

      // bit_now_start = global_first_bit;
      // bit_now_array[0] = bit_now_start;

      // printf("*****************************************\n");
      for(int message_trial = 0; message_trial < 2; message_trial++)
      {
        if(message_trial == 0)
        {
          buf_attacker[31] = 0x00;

          hash_g(kr_attacker, buf_attacker, 2*KYBER_SYMBYTES);
          /* overwrite coins in kr with H(c) */
          hash_h(kr_attacker+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
          /* hash concatenation of pre-k and H(c) to k */
          kdf(ss_attack, kr_attacker, 2*KYBER_SYMBYTES);

          // printf("kr_attacker\n");
          // for(int jj = 0; jj < 64; jj++)
          // {
          //   printf("%02x, ",kr_attacker[jj]);
          // }
          // printf("\n");

          // printf("ss_attacker\n");
          // for(int jj = 0; jj < CRYPTO_BYTES; jj++)
          // {
          //   printf("%02x, ",ss_attack[jj]);
          // }
          // printf("\n");
          // printf("ss_b\n");
          // for(int jj = 0; jj < CRYPTO_BYTES; jj++)
          // {
          //   printf("%02x, ",ss_b[jj]);
          // }
          // printf("\n");

          int cm_flag = 0;
          for(int cm = 0; cm < 32; cm++)
          {
            if(ss_attack[cm] != ss_b[cm])
              cm_flag = 1;
          }
          if(cm_flag == 0)
          {
            bit_now_start = 0;
            bit_now_array[0] = 0;
          }
        }
        else
        {
          // buf_attacker[0] = 0x01;
          buf_attacker[31] = 0x80;

          hash_g(kr_attacker, buf_attacker, 2*KYBER_SYMBYTES);
          hash_h(kr_attacker+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
          kdf(ss_attack, kr_attacker, 2*KYBER_SYMBYTES);

          // printf("ss_attacker\n");
          // for(int jj = 0; jj < CRYPTO_BYTES; jj++)
          // {
          //   printf("%02x, ",ss_attack[jj]);
          // }
          // printf("\n");
          // printf("ss_b\n");
          // for(int jj = 0; jj < CRYPTO_BYTES; jj++)
          // {
          //   printf("%02x, ",ss_b[jj]);
          // }
          // printf("\n");


          int cm_flag = 0;
          for(int cm = 0; cm < 32; cm++)
          {
            if(ss_attack[cm] != ss_b[cm])
              cm_flag = 1;
          }
          if(cm_flag == 0)
          {
            bit_now_start = 1;
            bit_now_array[0] = 1;
          }
        }
      }

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

        // bit_now = global_first_bit;
        // bit_now_array[repp+1] = bit_now;

        // bit_now = global_first_bit;
        // bit_now_array[repp+1] = bit_now;

        for(int message_trial = 0; message_trial < 2; message_trial++)
        {
          if(message_trial == 0)
          {
            buf_attacker[31] = 0x00;
            hash_g(kr_attacker, buf_attacker, 2*KYBER_SYMBYTES);
            hash_h(kr_attacker+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
            kdf(ss_attack, kr_attacker, 2*KYBER_SYMBYTES);

            int cm_flag = 0;
            for(int cm = 0; cm < 32; cm++)
            {
              if(ss_attack[cm] != ss_b[cm])
                cm_flag = 1;
            }
            if(cm_flag == 0)
            {
              bit_now = 0;
              bit_now_array[repp+1] = 0;
            }
          }
          else
          {
            // buf_attacker[0] = 0x01;
            buf_attacker[31] = 0x80;
            hash_g(kr_attacker, buf_attacker, 2*KYBER_SYMBYTES);
            hash_h(kr_attacker+KYBER_SYMBYTES, ct, KYBER_CIPHERTEXTBYTES);
            kdf(ss_attack, kr_attacker, 2*KYBER_SYMBYTES);

            int cm_flag = 0;
            for(int cm = 0; cm < 32; cm++)
            {
              if(ss_attack[cm] != ss_b[cm])
                cm_flag = 1;
            }
            if(cm_flag == 0)
            {
              bit_now = 1;
              bit_now_array[repp+1] = 1;
            }
          }
        }

        // for(int hh = 0; hh <= repp+1; hh++)
        //   printf("%d, ", bit_now_array[hh]);
        // printf("\n");

        #if KYBER_K == 3

        if(bit_now_start == 1)
        {

          if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1)
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
          if(bit_now_array[0] == 0 && bit_now_array[1] == 1)
          {
            secret_now = 2;
            touched = 1;
            break;
          }

        }


        #elif KYBER_K == 4


        if(bit_now_start == 1)
        {

          if(bit_now_array[0] == 1 && bit_now_array[1] == 1 && bit_now_array[2] == 1)
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
          if(bit_now_array[0] == 0 && bit_now_array[1] == 1)
          {
            secret_now = 2;
            touched = 1;
            break;
          }

        }

        #elif KYBER_K == 2

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

          if(bit_now_array[0] == 0 && bit_now_array[1] == 0 && bit_now_array[2] == 0)
          {
            secret_now = 1;
            touched = 1;
            break;
          }
          else if(bit_now_array[0] == 0 && bit_now_array[1] == 1 && bit_now_array[2] == 0)
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

        #endif

      }


      if(touched == 1)
      {
        // if(j == 0)
        // {
        //   secret_coeff[i][j] = secret_now;
        //
        // }
        // else
        // {
        //   secret_coeff[i][KYBER_N-j] = -1*secret_now;
        // }
        // continue;

        secret_coeff[i][KYBER_N - 1 - j] = secret_now;
        continue;

      }
      else
      {
        // if(j == 0)
        // {
        //   secret_coeff[i][j] = 999;
        // }
        // else
        // {
        //   secret_coeff[i][KYBER_N-j] = 999;
        // }

        secret_coeff[i][KYBER_N - 1 - j] = 999;
        continue;

      }

    }

    for(int yr1 = 0; yr1 < KYBER_N; yr1++)
    {
      if(secret_key_module[i][yr1] == secret_coeff[i][yr1])
        succ_count = succ_count+1;
    }

    printf("Secret Coeffs...\n");
    for(int yr1 = 0; yr1 < KYBER_N; yr1++)
    {
      printf("%d, ", secret_coeff[i][yr1]);
    }
    printf("\n");

  }

  if(succ_count == KYBER_K*KYBER_N)
  {
    printf("Success...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(KYBER_K*KYBER_N)));
    printf("****************************************************************************\n");
  }
  else
  {
    printf("Failure...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(KYBER_K*KYBER_N)));
    printf("****************************************************************************\n");
  }

  return queries;

}



static int test_kem_cca_parallel()
{

  uint8_t pk[CRYPTO_PUBLICKEYBYTES];
  uint8_t sk[CRYPTO_SECRETKEYBYTES];
  uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
  uint8_t ss_a[CRYPTO_BYTES], ss_b[CRYPTO_BYTES];
  uint64_t i, j;

  // parallel_factor = 64;

  // unsigned char entropy_input[48];
  //
	// for (i=0; i<48; i++)
  //   	entropy_input[i] = get_random();
	// randombytes_init(entropy_input, NULL, 256);

  //Generation of secret key sk and public key pk pair
  crypto_kem_keypair(pk, sk);

  uint8_t bit_now;
  uint8_t bit_now_start;
  uint8_t bit_now_array[parallel_factor][20];
  uint8_t touched = 0;
  int16_t secret_coeff[KYBER_K][KYBER_N];
  int16_t secret_now[parallel_factor];

  int queries = 0;

  int sum_oracle_response_array_unique_identification[2*KYBER_ETA1 + 1];

  for(int rrr = 0; rrr < 2*KYBER_ETA1 + 1; rrr++)
  {
    int summm = 0;
    for(int ee = 0; ee < NO_CTS; ee++)
      summm = summm + (1 << ee) * oracle_responses[ee][rrr];

    sum_oracle_response_array_unique_identification[rrr] = summm;
  }

  int succ_count = 0;
  int found_coeff = 0;

  for(i = 0; i < KYBER_K; i++)
	{
    u_poly_index = i;

		for(j = 0; j < KYBER_N; j=j+parallel_factor)
		{

      u_coeff_index = j;

      for(int pqp = 0; pqp < parallel_factor; pqp++)
      {
        for(int hh = 0; hh < 20; hh++)
          bit_now_array[pqp][hh] = 100;
      }

      for(int no_ct = 0; no_ct < NO_CTS; no_ct++)
      {

        u_coeff = choice_u[no_ct];
        v_coeff = choice_v[no_ct];

        crypto_kem_enc_attack(ct, ss_a, pk);
        crypto_kem_dec(ss_b, ct, sk);

        queries = queries+1;

        int byte_pos_of_message;
        int bit_pos_of_message;
        for(int parallel_rep = 0; parallel_rep < parallel_factor; parallel_rep++)
        {
          byte_pos_of_message = (int)parallel_rep/8;
          bit_pos_of_message = (int)parallel_rep%8;
          bit_now_array[parallel_rep][no_ct] = (global_message_oracle_value[byte_pos_of_message]>>bit_pos_of_message) & 0x1;
        }

      }

      // printf("j = %d\n", j);

      int sum_bit_now_array[parallel_factor];

      for(int yry = 0; yry < parallel_factor; yry++)
        sum_bit_now_array[yry] = 0;

      for(int parallel_rep = 0; parallel_rep < parallel_factor; parallel_rep++)
      {
        for(int cc = 0; cc < NO_CTS; cc++)
          sum_bit_now_array[parallel_rep] = sum_bit_now_array[parallel_rep] + (1 << cc) * bit_now_array[parallel_rep][cc];
        // printf("sum_now = %d\n", sum_bit_now_array[parallel_rep]);
      }

      // printf("sum_now = %d\n", sum_bit_now_array);

      for(int parallel_rep = 0; parallel_rep < parallel_factor; parallel_rep++)
      {
        for(int cc = 0; cc < (2*KYBER_ETA1+1); cc++)
        {
          if(sum_bit_now_array[parallel_rep] == sum_oracle_response_array_unique_identification[cc])
          {
            secret_now[parallel_rep] = cc - (KYBER_ETA1);
            // printf("secret_now = %d, cc= %d\n", secret_now, cc);
          }
        }
      }


      for(int parallel_rep = 0; parallel_rep < parallel_factor; parallel_rep++)
      {
        int index_now = j+parallel_rep;
        // printf("index_now = %d\n", index_now);
        if(index_now < parallel_factor)
        {
          secret_coeff[i][index_now] = secret_now[parallel_rep];
          // printf("%d\n", index_now);
        }
        else
        {
          // secret_coeff[i][KYBER_N-(j)-parallel_rep+1] = -1*secret_now[parallel_factor - parallel_rep - 1];
          secret_coeff[i][KYBER_N-(j)+parallel_rep] = -1*secret_now[parallel_rep];
          // printf("%d\n", KYBER_N-(j)-parallel_rep+1);
        }

      }


    }



    for(int yr1 = 0; yr1 < KYBER_N; yr1++)
    {
      if(secret_key_module[i][yr1] == secret_coeff[i][yr1])
        succ_count = succ_count+1;
    }

    printf("Secret Coeffs...\n");
    for(int yr1 = 0; yr1 < KYBER_N; yr1++)
    {
      printf("%d, ", secret_coeff[i][yr1]);
    }
    printf("\n");

  }

  if(succ_count == KYBER_K*KYBER_N)
  {
    printf("Success...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(KYBER_K*KYBER_N)));
    printf("****************************************************************************\n");
  }
  else
  {
    printf("Failure...\n");
    printf("Key Recovered with Success Rate:%f\n",(((float)succ_count)/(KYBER_K*KYBER_N)));
    printf("****************************************************************************\n");
  }

  return queries;

}


int main(void)
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

	return 0;
}




int identify_ciphertexts(void)
{

  int choice_u, choice_v;
  int i;
  int choice;
  int crypto_kem_dec_success;
  int count_success = 0;
  int analysed_coeff;
  int coeffs_tried = 0;
  int16_t temp_1, temp_2;
  uint16_t bit_1, bit_2;
  int succ_coeff_array[2*KYBER_ETA1+1];
  int other_succ_coeff_array[2*KYBER_ETA1+1];
  int sum = 0;
  int flag = 0;

  int du = (1 << KYBER_DU);
  int dv = (1 << KYBER_DV);

  int choice_u_scheme, choice_v_scheme, choice_scheme;
  int sum_other_coeff_array = 0;

  uint8_t decrypt_success_array[2*KYBER_ETA1+1];

  double float_u, float_v;
  int compressed_u, compressed_v;
  int decompressed_u, decompressed_v, decompressed_v1;

  int choice_2;
  int print_once = 0;

  for(i=0;i<2*KYBER_ETA1+1;i++)
    succ_coeff_array[i] = 0;

    int ham_wt_touch = 0;
    for(int ham_wt = 1; ham_wt <= (1 << (2*KYBER_ETA1+1)); ham_wt++)
    {
      // printf("ham_wt Trial: %d\n", ham_wt);
      ham_wt_touch = 0;
      for(choice_u = 0; choice_u<KYBER_Q; choice_u++)
      {

          float_u = ((double)du/KYBER_Q)*choice_u;
          compressed_u = (int)round(float_u) % du;

          float_u = ((double)KYBER_Q/du)*compressed_u;
          decompressed_u = round(float_u);

          float_v = ((double)dv/KYBER_Q)*0; // choice_v = 0
          compressed_v = (int)round(float_v) % dv;

          float_v = ((double)KYBER_Q/dv)*compressed_v;
          decompressed_v1 = round(float_v);

          for(int ii=0;ii<2*KYBER_ETA1+1;ii++)
              other_succ_coeff_array[ii] = 0;

          for(choice_2 = -1*KYBER_ETA1;choice_2 <= KYBER_ETA1;choice_2++)
          {

              temp_2 = (decompressed_v1 - (decompressed_u*choice_2))%KYBER_Q;
              if(temp_2 < 0)
                  temp_2 = temp_2 + KYBER_Q;

              // temp_2 = csubq(temp_2);
              bit_2 = (((temp_2 << 1) + KYBER_Q/2) / KYBER_Q) & 1;

              other_succ_coeff_array[choice_2+KYBER_ETA1] = bit_2;
          }

          sum_other_coeff_array = 0;
          for(int ii = 0;ii<2*KYBER_ETA1+1;ii++)
          {
              sum_other_coeff_array+=other_succ_coeff_array[ii];
          }

          if(sum_other_coeff_array == 0)
          {
            for(choice_v = 0; choice_v<KYBER_Q; choice_v++)
            {
                for(int ii=0;ii<2*KYBER_ETA1+1;ii++)
                    decrypt_success_array[ii] = 0;

                for(choice = -1*KYBER_ETA1;choice<=KYBER_ETA1;choice++)
                {

                    float_v = ((double)dv/KYBER_Q)*choice_v;
                    compressed_v = (int)round(float_v) % dv;

                    float_v = ((double)KYBER_Q/dv)*compressed_v;
                    decompressed_v = round(float_v);

                    temp_1 = (decompressed_v - (decompressed_u*choice))%KYBER_Q;
                    if(temp_1 < 0)
                        temp_1 = temp_1 + KYBER_Q;

                    // temp_1 = csubq(temp_1);
                    bit_1 = (((temp_1 << 1) + KYBER_Q/2) / KYBER_Q) & 1;

                    decrypt_success_array[choice+KYBER_ETA1] = bit_1;

                }

                int sum_bit_low_array = 0;
                for(int ii = 0;ii<2*KYBER_ETA1+1;ii++)
                {
                    sum_bit_low_array += (decrypt_success_array[ii])*(1<<ii);
                }

                if(sum_bit_low_array == ham_wt)
                {
                    // float_v = ((double)8/KYBER_Q)*choice_v; // choice_v = 0
                    // compressed_v = (int)round(float_v) % 8;

                    int zero_centered_u = barrett_reduce(choice_u);
                    int zero_centered_v = barrett_reduce(choice_v);

                    printf("Choice_u %d, Choice_v: %d\n",zero_centered_u,zero_centered_v);
                    for(int i=0;i<2*KYBER_ETA1+1;i++)
                        printf("%d, ",decrypt_success_array[i]);
                    printf("\n");
                    ham_wt_touch = 1;
                    break;
                }
              }

          }
          if(ham_wt_touch == 1)
            break;
      }

    }

  return 0;
}
