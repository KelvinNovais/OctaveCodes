function [interpolation_coefficients] = newton_interpolation (x, fx, n, x0)
  format long;

  # Spliting x and f(x) table to the initial x index (x0)
  x0 += 1;
  x = x(x0:end);
  fx = fx(x0:end);
  x0 = 1;

  # TODO describe
  poly_coefficients = [];
  interpolation_coefficients = zeros (1, n+1);

  # TODO: return error if x0 and n are not valid values
  if (length (x) != length (fx))
    error ("Length of x is different of lenght of fx\n");
  endif

  column = fx;
  for c = 0:n
    values = [];

    for l = 0:(n - c - 1)
      numerator = column(x0 + l + 1) - column(x0 + l);
      denominator = x(x0 + l + c+1) - x(x0 + l);
      values  = [values (numerator/denominator)];
    endfor

    res = column(1) * poly(poly_coefficients);
    for i = 0:length(res)-1
      interpolation_coefficients(n+1 -i) += res(length(res) -i);
    endfor

    poly_coefficients = [poly_coefficients x(c+1)];
    column = values;
  endfor

  printf ("\nNewton interpolation coefficients:\n");
  disp (interpolation_coefficients);
endfunction
