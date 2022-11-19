#include <math.h>

/****************************************************************************/
/* The scattering rate function                                             */
/****************************************************************************/
double scattering_rate(double EL) {
  double EG, mag_kG, denom, L, M;

  /* calculate the energy after the scattering */
  /* deltaGL=0.33eV (G lower than L), Ephonon=0.02788eV */
  EG=EL +0.33 +0.02788;
  if (EG<=0.0) return 0.0;

  /* calculate the magnitude of the wavevector after it has scattered */
  mag_kG=1.2859e9*sqrt(EG*(1.0+0.613*EG));

  denom=(1.0 + 1.226*EG)*(1.0 + 0.926*EL);
  L=(1.0 + 0.613*EG)*(1.0 + 0.463*EL) / denom;
  M=0.28382*EG*EL / denom;

  return 242.72*mag_kG*(1.0 + 1.226*EG)*(2.0*L + 0.66667*M);
}

/****************************************************************************/
