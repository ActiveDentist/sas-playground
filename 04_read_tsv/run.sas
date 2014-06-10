/**
 * Read a .TSV (tab separated values) file into a dataset
 * dsd stands for delimited-sensitive data
 * dlm stands for delimiter (09x is tab represented in ASCII)
 */
data demographics;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\04_read_tsv\data.tsv" dsd dlm='09'x;

  input Gender $ Age Height Weigth;
run;

/**
 * Dump dataset
 */
title "Demographics";
proc print data = demographics;
run;
