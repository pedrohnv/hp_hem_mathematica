#MKLROOT is defined by a bash script that is shipped together with intel's MKL.
#Run in the terminal "source mklvars.sh intel64"

WOLFRAMPATH = /usr/local/Wolfram/Mathematica/11.3/SystemFiles/IncludeFiles/C/
INCLUDE = -I.
LINK = -L. -lm
CFLAGS = -Wall -Werror -fno-exceptions -std=c11 -O3
#Compilers
CC = gcc # must be compliant to C Standard 99

wolfram_electrode	:
		$(CC) $(CFLAGS) -fPIC -shared $(INCLUDE) -I$(WOLFRAMPATH) -o libhem_electrode_mma.so interface_wolfram.c $(LINK) -lhem_linalg

