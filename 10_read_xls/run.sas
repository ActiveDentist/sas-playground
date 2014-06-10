/**
 * Read a .XLS file into a dataset
 * datafile should be replaced with your own as SAS doesn't allows relative paths
 */
proc import out = beatles
            datafile = "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\10_read_xls\data.xls"
            dbms = excel
            replace;
  /* Read only first sheet */
  range = "Sheet1$";
run;

/**
 * Print beatles dataset
 */
title "The Beatles";
proc print data = beatles;
run;
