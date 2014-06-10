/**
 * Define fibonacci function in the sasuser.FCMP_cat library
 */
proc fcmp out = sasuser.FCMP_cat.fcns;
  function fibonacci(x);
    if x le 1 then return(1);
    return(fibonacci(x - 1) + fibonacci(x - 2));
  endsub;
run;

options cmplib = (sasuser.FCMP_cat);

/**
 * Generate a test dataset with 10 numbers and it's fibonacci values
 */
data test;
  input x;
  fibonacci = fibonacci(x);
  datalines;
1
2
3
4
5
6
7
8
9
10
;
run;

/**
 * Print test dataset
 */
title  "Fibonacci serie from 1 to 10";
proc print data = test;
run;