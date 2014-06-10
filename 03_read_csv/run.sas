/**
 * Read a .CSV file into a dataset
 * dsd stands for delimited-sensitive data
 */
data demographics;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\03_read_csv\data.csv" dsd;

  input Gender $ Age Height Weigth;
run;

/**
 * Dump dataset
 */
title "Demographics";
proc print data = demographics;
run;
