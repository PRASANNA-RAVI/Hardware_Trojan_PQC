# Chosen Ciphertext Attack on SABER:

This script is used to run a chosen ciphertext attack on SABER (Recommended Paramter Sets SABER_L = 3).

# Compile Instructions:

The OpenSSL library (1.1.1, or later) must be installed. Use `sudo apt-get install libssl-dev` for most Linux distributions.
On a Mac, an easy way is to use [brew](https://brew.sh), install it with `brew install openssl@1.1` and then add it to the
`CPATH` and `LIBRARY_PATH` environment variables:
  ```
  export CPATH=${CPATH+$CPATH:}/usr/local/opt/openssl@1.1/include
  export LIBRARY_PATH=${LIBRARY_PATH+$LIBRARY_PATH:}/usr/local/opt/openssl@1.1/lib
  ```

To compile, please run the following commands...

  ```
  make clean
  make test/kem
  ```

# Run Instructions:

  ```
  ./test/kem
  ```

This runs the attack for `NTESTS` number of times and the value of `NTESTS` is set in the file test/kem.c .
The default value of `NTESTS` is 10, however it can be changed.

# Info about Attack Simulation:

We craft chosen ciphertexts of a special structure: This is implemented using the function `indcpa_kem_enc_attack` in the kem.c file. The main attack flow is implemented in test/kem.c file. In our attack, we are essentially querying the decapsulation device with these chosen ciphertexts and we simulate a binary oracle that provides us information about the first bit of the message m_0 for the chosen ciphertexts. With this information, we can easily recover the secret key. The oracle is realized using the variable `global_first_bit` used in test/kem.c file.

The rule for selecting the chosen ciphertexts is given in `Choice_u_v_for_Attack.txt` file in the Chosen_Ciphertext_Values folder.
The chosen ciphertexts have a special structure (i.e) ciphertext has two polynomials u and v... all but one coefficient is non-zero in both u and v... This ensures that the message output is either m = 0 (all zeros) or m = 1 (all but LSB bit is zero) and the value of the LSB of m depends on a corresponding secret coefficient. Then, we build a distinguisher for each candidate of the secret coefficient (-4 to 4 in case of SABER) using the LSB of message.

Once we construct the chosen ciphertexts, then we query the decapsulation oracle with these chosen ciphertexts and simply observe the LSB of the decrypted message. From this information, we can easily recover the secret key using the rule table provided in `Choice_u_v_for_Attack.txt`.
