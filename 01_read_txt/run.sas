/**
 * Read a .TXT file into a dataset
 */
data demographic;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\01_read_txt\data.txt";

  input Gender $ Age Height Weight;

  /* Add a calculated variable */
  /*Compute a body mass index (BMI) */
  BMI = (Weight / 2.2) / (Height*.0254)**2;
run;

/**
 * Frequencies of discrete variable Gender
 */
title "Gender frequencies";
proc freq data = demographic;
  table Gender;
run;

/**
 * Means of Age, Height, Weight and BMI
 */
title "Summary Statistics";
proc means data = demographic;
  var Age Height Weight BMI;
run;

/**
 * Dump dataset
 */
title "Data table";
proc print data = demographic;
run;
