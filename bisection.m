# endpoints a, b
# tolerance TOL
# maximum number of iterations N
# solution p

function [p] = bisection (a, b, TOL, N, f)
  i = 1;
  FA = f (a);

  printf ('\n\nBISSECTION METHOD\n');
  printf ("│ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │\n",
  "k", "ak", "bk", "xk", "f(ak)", "f(xk)", "f(ak)·f(bk)", "|bk-ak|/2");
  printf ("├─────────────────┼─────────────────┼─────────────────┼─────────────────");
  printf ("┼─────────────────┼─────────────────┼────────────────┼─────────────────┤\n");

  while (i <= N)
    p = a + (b - a)/2;
    FP = f (p);

    printf ("│ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d│ %-15d │\n",
    i, a, b, p, FA, FP, (FA * FP), ((b - a)/2));

    if (FP == 0 || ((b - a)/2 < TOL))
      printf ("\nFound root:\n");
      ROOT = p
      printf ("With an error of:\n");
      ERROR = ((b - a)/2)
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

  error ('Method failed after N = %d iterations', N);
endfunction
