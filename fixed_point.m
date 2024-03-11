function [p] = fixed_point (p0, TOL, N, g)
  i = 1;
  pi = p0;

  printf ("\n\nFIXED POINT METHOD\n");
  printf ("│ %-15.15s │ %-15.15s │ %-15.15s │ %-15.15s │\n",
          "i", "pi", "g(pi)", "|pi - p0|"
  );
  printf ("├─────────────────┼─────────────────┼─────────────────┼─────────────────┤\n");

  while (i <= N)
    gp = g(pi);

    printf ("│ %-15d │ %-15d │ %-15d │ %-15d │\n",
            i, pi, gp, (abs (gp - pi))
    );

    if ((abs (gp - pi)) < TOL)
      printf ("\nFound root:\n");
      ROOT = gp
      printf ("With an error of:\n");
      ERROR = (abs (gp - pi))
      return;
    endif

    i += 1;
    pi = gp;
  endwhile

  error ('Method failed after N = %d iterations', N);
endfunction
