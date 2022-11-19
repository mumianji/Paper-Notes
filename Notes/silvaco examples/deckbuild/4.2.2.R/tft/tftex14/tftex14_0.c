#include <math.h>
#include <stdio.h>

double my_lc_rc(double v, double temp, double ktq, double time, double *curr, double *didv, double *cap, double *charge)
{
                          double eps,e0;
                          double epl,clc;
                          double theta,gamma;
                          double Dtime;
                          double vc;
 			  double L,W,D;

                          L=152;
                          W=148; 
                          Dtime=100e-3;
                          theta=51.0; /* sec */
                          gamma=51.2e-3; /* sec */
                          epl=3.1;
                          vc=1.887;
                          D=10.02;
                          e0 = 8.854e-12;

			if(v > vc)
			eps = epl + theta*gamma*exp(Dtime)*sqrt(v/vc - 1.0);
			else if( v <= vc)
                        eps =epl;
			clc= e0*eps*L*W*1e-6/D; /* F */
			*curr=v/10e9;
			*didv=1/10e9;
			*cap=clc;
			*charge=*cap*v;
			/*
			printf("clc = %e(F)\n", clc);
			printf("charge = %e\n", *charge);
			*/
			return(0);

}
