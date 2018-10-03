#include <stdio.h>  //printf
#include <assert.h> //assert
#include <math.h> //fabs
#include "act_afb.h"

int main()
{
    double yf;
    yf = act_afb(2018,12,15, 2019,3,1);
    assert( fabs(yf - 0.20547945) < 1e-8 );
    printf("%.8f\n", yf);
	return 0;
}
