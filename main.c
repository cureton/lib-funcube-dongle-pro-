
#include <stdio.h>
#include "fcdpp.h"



int main(int argc, char** argv) {

	char version_string[1000] = {0};
        fcdGetFwVerStr(version_string);
	printf("FCDPP version is %s\n",version_string);



        int freq_actual;

        fcdAppGetFreq(&freq_actual);

	printf("Current in FCD  is %d\n",freq_actual);

	int freq_requested = 7012300;
        fcdAppSetFreq(freq_requested, &freq_actual);
	
	printf("Frequenciy requested is %d, frequency set is %d\n", freq_requested, freq_actual);

	
        fcdAppGetFreq(&freq_actual);

	printf("Frequenciy in FCD  is %d\n",freq_actual);
}
