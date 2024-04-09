function [] = run_studies ()
  # HOMEWORK 1
  %homework1_1 ();
  %homework1_2 ();

  # HOMEWORK 2
  homework2_1 ();
endfunction

# HOMEWORK 1
function [] = homework1_1 ()
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

function [] = homework1_2 ()
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

# HOMEWORK 2
function [] = homework2_1 ()
  printf ("\n\nP1(t)\n");
  x = [0.7 ; 1.2];
  fx = [36.486 ; 4.938];
  n = 1;
  P1 = lagrange (x,fx,n);

  printf ("\n\nP2(t)\n");
  x = [0.7 ; 1.2 ; 2.0];
  fx = [36.486 ; 4.938 ; 2.201];
  n = 2;
  P2 = lagrange (x,fx,n);

  printf ("\n\nP3(t)\n");
  x = [0.4 ; 0.7 ; 1.2 ; 2.0];
  fx = [121.138 ; 36.486 ; 4.938 ; 0.201];
  n = 3;
  P3 = lagrange (x,fx,n);

  # Plot graphics
  x = [0 ; 0.1 ; 0.2 ; 0.4 ; 0.7 ; 1.2 ; 2 ; 5];
  fx = [600 ; 402.192 ; 269.597 ; 121.138 ; 36.496 ; 4.938 ; 0.201 ; 1.24E-6];

  printf ("Ploting graphics...\n");
  hold on
  grid;
  x_axis = x(1) : 0.05 : x(length(x));
  set (gca, 'FontSize', 20)
  xlabel ("t");
  ylabel ("I (t)");
  title ("Interpolação de Lagrange");

  plot (x_axis, polyval (P1, x_axis), 'linewidth', 5);
  plot (x_axis, polyval (P2, x_axis), 'linewidth', 5);
  plot (x_axis, polyval (P3, x_axis), 'linewidth', 5);

  plot (x, fx, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 10);

  legend ({'P1(t)', 'P2(t)', 'P3(t)', 'Pontos'}, "location", "east");
  hold off
endfunction
