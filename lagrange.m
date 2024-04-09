# ATTENTION!
# Octave doesn't accept index 0, so here the operations are done with n = n+1
# If there's the need to use the value of n (not for indexes), be aware of that

function [lagrange_polynom] = lagrange (x, fx, n)
  format long

  lagrange_polynom = n*[0];
  n += 1;

  for k = 1:n
    # Calculating lk (x):
    numerator_xs = [];
    denominator = 1;

    for i = 1:n
      if (k != i)
        # Get x0, x1, ..., xn
        numerator_xs = [numerator_xs x(i)];
        denominator *= (x(k) - x(i));
      endif
    endfor

    # Calculate (x - x0)(x - x1) ... (x - xn)
    numerator = poly (numerator_xs);
    l = numerator/denominator;
    printf ("l%d = ", k-1);
    disp (l);

    # Calculate fk · lk
    fl = fx(k) * l;

    lagrange_polynom += fl;
  endfor

  printf ("\nLangrange's polynom coefficients:\n");
  disp (lagrange_polynom);
endfunction
