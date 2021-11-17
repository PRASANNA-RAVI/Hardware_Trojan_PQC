CC 		  = /usr/bin/gcc
CFLAGS  = -Wall -Wextra -Wmissing-prototypes -Wredundant-decls\
	-O0 -fomit-frame-pointer -march=native -g
NISTFLAGS  = -Wno-unused-result -O3 -fomit-frame-pointer -march=native -std=c99
CLANG   = clang -march=native -O3 -fomit-frame-pointer -fwrapv -Qunused-arguments
RM 		  = /bin/rm

all: test/kem

SOURCES = pack_unpack.c poly.c fips202.c verify.c cbd.c SABER_indcpa.c kem.c
HEADERS = SABER_params.h pack_unpack.h poly.h rng.h fips202.h verify.h cbd.h SABER_indcpa.h

test/kem: $(SOURCES) $(HEADERS) rng.o test/kem.c
	$(CC) $(CFLAGS) -o $@ $(SOURCES) rng.o test/kem.c -lcrypto

rng.o: rng.c
	$(CC) $(NISTFLAGS) -c rng.c -lcrypto -o $@

.PHONY: clean test

test:
	./test/kem

clean:
	-$(RM) -f *.o
	-$(RM) -rf test/kem
	-$(RM) -f *.req
	-$(RM) -f *.rsp
