/**
 * Read a .TXT file into a dataset
 */
data scores;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\08_read_txt_scores\data.txt";

  input Gender $1
        English
        History
        Math
        Science;

  /* Average score for each student */
  Average = mean(English, History, Math, Science);
run;

/**
 * Print scores dataset
 */
title "Scores";
proc print data = scores;
run;
