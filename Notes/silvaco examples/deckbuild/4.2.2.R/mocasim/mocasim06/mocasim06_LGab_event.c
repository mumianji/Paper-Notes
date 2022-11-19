#include <math.h>

/****************************************************************************/

/*
 * This is an implementation of the Park and Miller random number generator
 *
 *        I_{j+1} = a . I_j (mod m)
 *
 * See Numerical Recipes in C (2nd edition), W.H.Press et al,
 * Cambridge university press, 1992, section 7.1 (p278).
 *
 * NB, the seed (initial value of I) cannot be zero.
 *
 * Schrage's algorithm is used to calculate the function without overflowing
 * the integer variables.
 *
 * The Schrage algorithm writes m = a.q + r then
 *
 * a.z mod m = a . (z mod q) - r . [(int) z/q]
 *
 * If this result is negative then the correct answer is found by adding 'm'.
 */

/* m is 2^31 - 1 */
#define PMm 2147483647

/*
 * Only some values of 'a' should be used, Numerical Recipes give a=16807,
 * 48271, and 69621. If a different value of 'a' is chosen the values for
 * 'q' and 'r' must be re-calculated.
 */
#define PMa 48271

/* q = (int) (m/a) */
#define PMq 44488

/* x = m mod a */
#define PMx 3399

double PMrn(long* seed) {
  long z_over_q;
  long z_mod_q;

  z_over_q=(*seed) / PMq; /* Must be an integer division */
  z_mod_q=(*seed) - z_over_q*PMq;
  (*seed)=PMa*z_mod_q - PMx*z_over_q;
  if ((*seed)<0) (*seed)= (*seed) + PMm;

  return (*seed) / ((double) PMm); /* Must be a real divsion */
}

/****************************************************************************/
/* The scattering event function                                            */
/****************************************************************************/

/*
 * This function just randomly scatters the particle with no weighting
 * on the angle.
 */

void scattering_event(double* kx, double* ky, double* kz, long* seed) {
  double mag_kG, EG, EL, mag_kL, theta, phi;

  /* calculate the energy of the particle before being scattered */
  mag_kL=sqrt((*kx)*(*kx) + (*ky)*(*ky) + (*kz)*(*kz));
  EL=(-1.0 + sqrt(1.0 + 3.1784e-15*mag_kL*mag_kL)) / 0.926;

  /* calculate the energy and wavevector after being scattered */
  EG=EL +0.33 +0.02788;
  if (EG<=0.0) return; /* assume no scattering occurs */

  mag_kG=1.2859e7*sqrt(EG*(1.0 + 0.613*EG));

  /* calculate the random angles of the final state */
  theta=2.0*M_PI*PMrn(seed);
  phi=acos(1.0 - 2.0*PMrn(seed));

  /* calculate the components of the final wavevector */
  (*kx)=mag_kG*sin(phi)*cos(theta);
  (*ky)=mag_kG*sin(phi)*sin(theta);
  (*kz)=mag_kG*cos(phi);
}

/****************************************************************************/
