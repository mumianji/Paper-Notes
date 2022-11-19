#include <math.h>

/****************************************************************************/
/* The scattering rate function                                             */
/****************************************************************************/
double scattering_rate(double EG) {
  double EL, mag_kL, denom, L, M;

  /* calculate the energy after the scattering */
  /* deltaGL=0.33eV (G lower than L), Ephonon=0.02788eV */
  EL=EG -0.33 +0.02788;
  if (EL<=0.0) return 0.0;

  /* calculate the magnitude of the wavevector after it has scattered */
  mag_kL=2.4139e9*sqrt(EL*(1.0+0.463*EL));

  denom=(1.0 + 1.226*EG)*(1.0 + 0.926*EL);
  L=(1.0 + 0.613*EG)*(1.0 + 0.463*EL) / denom;
  M=0.28382*EG*EL / denom;

  return 3421.1*mag_kL*(1.0 + 0.926*EL)*(2.0*L + 0.66667*M);
}

/****************************************************************************/
