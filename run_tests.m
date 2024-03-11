function [] = run_tests ()
  test_bisection ();
  test_secant ();
  test_newton ();
  #test_false_postion ();
  test_fixed_point ();
endfunction

function [] = test_bisection ()
  format long
  f = @(x) e^x + x + 2;
  a = -2.5;
  b = -2.0;
  TOL = 0.000001;
  N = 100;
  bisection (a, b, TOL, N, f);
endfunction

function [] = test_secant ()
  format long
  f = @(x) e^x + x + 2;
  p0 = -2.5;
  p1 = -2.4;
  TOL = 0.01;
  N = 100;
  secant (p0, p1, TOL, N, f);
endfunction

function [] = test_newton ()
  format long
  F = @(x) e^x + x + 2;
  f = @(x) e^x + 1;
  p0 = -2.5;
  TOL = 0.01;
  N = 100;
  newton (p0, TOL, N, F, f);
endfunction

function [] = test_false_postion ()
  format long
  a = -2.5;
  b = -2.0;
  f = @(x) e^x + x + 2;
  TOL = 0.01;
  N = 100;
  false_position (a, b, TOL, N, f);
endfunction

function [] = test_fixed_point ()
  format long
  a = 1.5;
  f = @(x) 1 + 2/x;
  TOL = 0.0001;
  N = 100;
  fixed_point (a, TOL, N, f);
endfunction
