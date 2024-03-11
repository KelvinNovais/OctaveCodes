function [p] = newton (p0, TOL, N, F, f)
  i = 1;

  printf ("\n\nNEWTON'S METHOD\n");
  printf ("│ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │\n",
  "k", "pk", "f(pk)", "f'(pk)", " |p_{k+1} - pk| ", "p_{k+1}");
  printf ("├─────────────────┼─────────────────┼─────────────────");
  printf ("┼─────────────────┼─────────────────┼─────────────────┤\n");

  while (i <= N)
    p = p0 - (F(p0) / f(p0));

    printf ("│ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │\n",
    i, p0, F(p0), f(p0), abs (p - p0), p);

    if ((abs (p - p0)) < TOL)
      printf ("\nFound root:\n");
      ROOT = p
      printf ("With an error of:\n");
      ERROR = (abs (p - p0))
      return;
    endif

    i += 1;
    p0 = p;
  endwhile

  error ('Method failed after N = %d iterations', N);
endfunction
