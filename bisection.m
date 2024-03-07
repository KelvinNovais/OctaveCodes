# endpoints a, b
# tolerance TOL
# maximum number of iterations N
# solution p

function [p] = bisection (a, b, TOL, N, f)
  i = 1;
  FA = f (a);

  while (i <= N)
    p = a + (b - a)/2;
    FP = f (p);

    if (FP == 0 || ((b - a)/2 < TOL))
      return;
    endif

    i += 1;

    if (FA * FP > 0)
      a = p;
      FA = FP;
    else
      b = p;
    endif
  endwhile

  error ('Method failed after N iterations, N =', N)
endfunction
