#include <template.h>
#include <stdio.h>


/*
 * Position dependent net doping.
 * Statement: DOPING
 * Parameter: F.DOPING
 * Arguments:
 * x      location x (microns)
 * y      location y (microns)
 * *nnet  net doping concentration (per cc)
 */
int doping(double x,double y,double z, double *nnet)
{
	*nnet = CIgetNodalDouble(CI_NODAL_HYDROGEN_CONCENTRATION);

	return(0);                /* 0 - ok */
}


