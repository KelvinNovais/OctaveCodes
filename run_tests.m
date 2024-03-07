function [] = run_tests ()
  test_bisection ();
endfunction

function [] = test_bisection ()
  format long
  f = @(x) e^x+x+2;
  a = -2.5;
  b = -2.0;
  TOL = 0.000001;
  N   = 100;
  p = bisection (a, b, TOL, N, f)
endfunction
