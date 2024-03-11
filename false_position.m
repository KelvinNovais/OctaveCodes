function [p] = false_position (p0, p1, TOL, N, f)
  i = 2;
  q0 = f(p0);
  q1 = f(p1);

  printf ("\n\FALSE POSITION METHOD\n");
  printf ("│ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │\n",
  "k", "pa", "pb", "pk", "f(pa)", "f(pk)", "|pb - pa|");
    printf ("├─────────────────┼─────────────────┼─────────────────┼─────────────────");
    printf ("┼─────────────────┼─────────────────┼─────────────────┤\n");

  while (i <= N)
    p = p1 - q1*(p1 - p0)/(q1 - q0);

    printf ("│ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │ %-15d │\n",
    i, p0, p1, p, f(p0), f(p), abs (p - p1));

    if ((abs (p - p1)) < TOL)
      printf ("\nFound root:\n");
      ROOT = p
      printf ("With an error of:\n");
      ERROR = (abs (p - p1))
      return;
    endif

    i += 1;
    q = f(p);

    if ((q * q1) < 0)
      p0 = p1;
      q0 = q1;
    endif

    p1 = p;
    q1 = q;
  endwhile

  error ('Method failed after N = %d iterations', N);
endfunction
