/**
 * Read datalines into a dataset
 */
data demographic;
   input Gender $ Age Height Weight;
datalines;
M 50 68 155
F 23 60 101
M 65 72 220
F 35 65 133
M 15 71 166
;

/**
 * Dump dataset
 */
title "Demographics";
proc print data = demographics;
run;
