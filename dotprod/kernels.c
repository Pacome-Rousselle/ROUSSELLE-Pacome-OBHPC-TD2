//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 dotprod_base(f64 *restrict a, f64 *restrict b, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i] * b[i];

  return d;
}

//Unroll 8
f64 dotprod_unroll_8(f64 *restrict a, f64 *restrict b, u64 n)
{
  #define UNROLL8 8
  double d = 0.0;
  
  //Unroll 8 times
  for (u64 i = 0; i < (n - (n & (UNROLL8 - 1))); i+= UNROLL8)
  {
    d += a[i] * b[i];   d += a[i+1] * b[i+1];
    d += a[i+2] * b[i+2];   d += a[i+3] * b[i+3];
    d += a[i+4] * b[i+4];   d += a[i+5] * b[i+5];
    d += a[i+6] * b[i+6];   d += a[i+7] * b[i+7];
  }

  //Manage the leftovers
  for (u64 i = (n - (n & 7)); i < n; i++)
    d += a[i] * b[i];

  return d;
}