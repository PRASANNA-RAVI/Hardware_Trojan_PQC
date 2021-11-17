#include <string.h>
#include <stdint.h>
#include "SABER_indcpa.h"
#include "poly.h"
#include "pack_unpack.h"
#include "poly_mul.c"
#include "rng.h"
#include "fips202.h"
#include "SABER_params.h"

#define h1 (1 << (SABER_EQ - SABER_EP - 1))
#define h2 ((1 << (SABER_EP - 2)) - (1 << (SABER_EP - SABER_ET - 1)) + (1 << (SABER_EQ - SABER_EP - 1)))

extern uint16_t u_coeff, v_coeff;
extern uint16_t u_poly_index,u_coeff_index;
extern uint8_t global_first_bit;
extern uint16_t secret_key_module[SABER_L][SABER_N];
extern uint16_t secret_coeff[SABER_L][SABER_N];
extern int extra_trial_no;

#if SABER_L == 2

int oracle_responses_other[10][11] = {
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
                   {1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0}
                 };

#elif SABER_L == 3

int oracle_responses_other[8][9] = {
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0, 0, 0}
								 };

#elif SABER_L == 4

int oracle_responses_other[6][7] = {
                   {0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0},
                   {0, 0, 0, 0, 0, 0, 0}
                 };

#endif

void indcpa_kem_keypair(uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES], uint8_t sk[SABER_INDCPA_SECRETKEYBYTES])
{
	uint16_t A[SABER_L][SABER_L][SABER_N];
	uint16_t s[SABER_L][SABER_N];
	uint16_t b[SABER_L][SABER_N] = {0};

	uint8_t seed_A[SABER_SEEDBYTES];
	uint8_t seed_s[SABER_NOISE_SEEDBYTES];
	int i, j;

	randombytes(seed_A, SABER_SEEDBYTES);
	shake128(seed_A, SABER_SEEDBYTES, seed_A, SABER_SEEDBYTES); // for not revealing system RNG state
	randombytes(seed_s, SABER_NOISE_SEEDBYTES);

	GenMatrix(A, seed_A);
	GenSecret(s, seed_s);
	MatrixVectorMul(A, s, b, 1);

	printf("**************************************\n");
	printf("Printing Correct Secret Polynomials...\n");

	for(i = 0; i < SABER_L; i++)
	{
		printf("Secret Poly %d:\n",i);
		for(j = 0; j < SABER_N; j++)
		{
			printf("%d, ", s[i][j]);
		}
		printf("\n");
	}

	for(i = 0; i < SABER_L; i++)
	{
		for(j = 0; j < SABER_N; j++)
		{
			secret_key_module[i][j] = s[i][j];
		}
	}

	for (i = 0; i < SABER_L; i++)
	{
		for (j = 0; j < SABER_N; j++)
		{
			b[i][j] = (b[i][j] + h1) >> (SABER_EQ - SABER_EP);
		}
	}

	POLVECq2BS(sk, s);
	POLVECp2BS(pk, b);
	memcpy(pk + SABER_POLYVECCOMPRESSEDBYTES, seed_A, sizeof(seed_A));
}

void indcpa_kem_enc_attack(const uint8_t m[SABER_KEYBYTES], const uint8_t seed_sp[SABER_NOISE_SEEDBYTES], const uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES], uint8_t ciphertext[SABER_BYTES_CCA_DEC])
{
	uint16_t A[SABER_L][SABER_L][SABER_N];
	uint16_t sp[SABER_L][SABER_N];
	uint16_t bp[SABER_L][SABER_N] = {0};
	uint16_t vp[SABER_N] = {0};
	uint16_t mp[SABER_N];
	uint16_t b[SABER_L][SABER_N];
	int i, j;
	const uint8_t *seed_A = pk + SABER_POLYVECCOMPRESSEDBYTES;

	GenMatrix(A, seed_A);
	GenSecret(sp, seed_sp);
	MatrixVectorMul(A, sp, bp, 0);

	for (i = 0; i < SABER_L; i++)
	{
		for (j = 0; j < SABER_N; j++)
		{
			// bp[i][j] = (bp[i][j] + h1) >> (SABER_EQ - SABER_EP);
			bp[i][j] = 0;
		}
	}

	bp[u_poly_index][u_coeff_index] = u_coeff;

	POLVECp2BS(ciphertext, bp);
	BS2POLVECp(pk, b);
	InnerProd(b, sp, vp);

	BS2POLmsg(m, mp);

	// for (j = 0; j < SABER_N; j++)
	// {
	// 	vp[j] = 0;
	// }

	if(extra_trial_no == 0)
	{
		for (j = 0; j < SABER_N; j++)
		{
			vp[j] = 0;
		}
	}
	else
	{
		// printf("I am here...\n");
		for (j = 0; j < SABER_N; j++)
		{

			int index_to_consider;
			int sign_to_consider;

			if(u_coeff_index == 0)
			{
				index_to_consider = j;
				sign_to_consider = 1;
			}
			else
			{
				if(j < u_coeff_index)
				{
					index_to_consider = SABER_N-(u_coeff_index)+j;
					sign_to_consider = -1;
				}
				else
				{
					index_to_consider = j-u_coeff_index;
					sign_to_consider = 1;
				}
			}

			uint16_t secret_now_now = secret_coeff[u_poly_index][index_to_consider];
			int secret_value;
			int oracle_value;

			if(secret_now_now != 999)
			{
				if(secret_now_now >= 65530)
					secret_value = -1*(65536-secret_now_now);
				else
					secret_value = secret_now_now;

				secret_value = sign_to_consider*secret_value;
				oracle_value = oracle_responses_other[extra_trial_no][secret_value+(SABER_MU/2)];
			}
			else
			{
				oracle_value = 0;
			}

			if(oracle_value == 0)
				vp[j] = 0;
			else
				vp[j] = (1<<SABER_ET)/2;

		}
	}

	vp[SABER_N-1] = v_coeff;

	POLT2BS(ciphertext + SABER_POLYVECCOMPRESSEDBYTES, vp);
}

void indcpa_kem_enc(const uint8_t m[SABER_KEYBYTES], const uint8_t seed_sp[SABER_NOISE_SEEDBYTES], const uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES], uint8_t ciphertext[SABER_BYTES_CCA_DEC])
{
	uint16_t A[SABER_L][SABER_L][SABER_N];
	uint16_t sp[SABER_L][SABER_N];
	uint16_t bp[SABER_L][SABER_N] = {0};
	uint16_t vp[SABER_N] = {0};
	uint16_t mp[SABER_N];
	uint16_t b[SABER_L][SABER_N];
	int i, j;
	const uint8_t *seed_A = pk + SABER_POLYVECCOMPRESSEDBYTES;

	GenMatrix(A, seed_A);
	GenSecret(sp, seed_sp);
	MatrixVectorMul(A, sp, bp, 0);

	for (i = 0; i < SABER_L; i++)
	{
		for (j = 0; j < SABER_N; j++)
		{
			bp[i][j] = (bp[i][j] + h1) >> (SABER_EQ - SABER_EP);
		}
	}

	POLVECp2BS(ciphertext, bp);
	BS2POLVECp(pk, b);
	InnerProd(b, sp, vp);

	BS2POLmsg(m, mp);

	for (j = 0; j < SABER_N; j++)
	{
		vp[j] = (vp[j] - (mp[j] << (SABER_EP - 1)) + h1) >> (SABER_EP - SABER_ET);
	}

	POLT2BS(ciphertext + SABER_POLYVECCOMPRESSEDBYTES, vp);
}

void indcpa_kem_dec(const uint8_t sk[SABER_INDCPA_SECRETKEYBYTES], const uint8_t ciphertext[SABER_BYTES_CCA_DEC], uint8_t m[SABER_KEYBYTES])
{

	uint16_t s[SABER_L][SABER_N];
	uint16_t b[SABER_L][SABER_N];
	uint16_t v[SABER_N] = {0};
	uint16_t cm[SABER_N];
	int i,j;

	BS2POLVECq(sk, s);
	BS2POLVECp(ciphertext, b);
	InnerProd(b, s, v);

	BS2POLT(ciphertext + SABER_POLYVECCOMPRESSEDBYTES, cm);


	for (i = 0; i < SABER_N; i++)
	{
		v[i] = (v[i] + h2 - (cm[i] << (SABER_EP - SABER_ET))) >> (SABER_EP - 1);
	}

	POLmsg2BS(m, v);

	// global_first_bit = m[0]&0x1;

	global_first_bit = (m[31]>>7)&0x1;

	int jj;

	// if(extra_trial_no != 0)
	// {
		// for(jj = 0; jj < 32; jj++)
	  // {
	  //   printf("%02x, ",m[jj]);
	  // }
	  // printf("\n");
	// }

	// // Simulating a decryption oracle...
	// for(j = 0; j < 32; j++)
	// {
	// 	global_message[j] = m[j];
	// }

}
