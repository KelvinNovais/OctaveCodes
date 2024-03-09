function [p] = secant (p0, p1, TOL, N, f)
  i = 0;

  q0 = f(p0);
  q1 = f(p1);

  printf ("\n\n│ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │\n",
          "n", "p_{n-1}", "pn", "f(p_{n-1})", "f(pn)", "|p_{n-1} - pn|", "p_{n+1}"
  );

  while (i <= N)
    p = p1 - q1 * (p1 - p0)/(q1 - q0);

  printf ("│ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │\n",
          i, p0, p1, q0, q1, (abs (p - p1)), p
  );

    if ((abs (p - p1)) < TOL)
      printf ("\nFound root:\n");
      ROOT = p
      printf ("With an error of:\n");
      ERROR = (abs (p - p1))
      return;
    endif

      i += 1;
      p0 = p1;
      p1 = p;
      q0 = q1;
      q1 = f(p);

  endwhile

  error ('Method failed after N iterations, N =', N);
endfunction
