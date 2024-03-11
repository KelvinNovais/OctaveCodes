function [] = run_studies ()
  part_one ();
  part_two ();
endfunction

function [] = part_one ()
  format long

  # Parameters
  m = 100; # kg
  g = 10; # m/s

  f = @(c) (g*m / c) * (1 - e^(-6*c / 100)) - 4;

  # Beginning and end of interval
  a = 240;
  b = 270;

  # Tolerance and number of max iterations
  TOL = 1E-6;
  N = 100000;

  printf ('### PART ONE ###\n');
  bisection (a, b, TOL, N, f);
  secant (a, b, TOL, N, f);
endfunction

function [] = part_two ()
  F = @(x) sqrt (4*x) - x + 7;
  f = @(x) (1 / sqrt (x)) - 1;
  g1 = @(x) 2 * sqrt (x) + 7;
  g2 = @(x) ((x - 7) / 2)^2;
  p0 = 10;
  p1 = 15;
  TOL = 1E-8;
  N = 100000;

  printf ('\n\n### PART TWO ###\n');
  newton (p0, TOL, N, F, f);
  fixed_point (p0, TOL, N, g1);
  # fixed_point (p0, TOL, N, g2);
  false_position (p0, p1, TOL, N, F);
endfunction
