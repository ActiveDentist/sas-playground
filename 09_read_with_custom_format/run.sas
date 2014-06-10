/**
 * Define custom formats
 */
proc format;
  value $gender 'M' = 'Male'
                'F' = 'Female'
                ' ' = 'Not entered';
  value age low-29 = 'Less than 30'
            30-50 = '30 to 50'
            51-high = '51+';
run;

/**
 * Read datalines into a dataset
 */
data people;
   input Gender $ Age Height Weight;
datalines;
M 50 68 155
F 23 60 101
M 65 72 220
F 35 65 133
M 15 71 166
;

/**
 * Print dataset and apply formats
 */
title "People formatted";
proc print data = people;
  format Gender $gender.
         Age age.;
run;