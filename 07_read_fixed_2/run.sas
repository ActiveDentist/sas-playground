/**
 * Read a fixed size lines into a dataset
 */
data financial;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\07_read_fixed_2\data.txt";

  input @1 Subj $3.
        @4 DOB mmddyy10.
        @14 Gender $1.
        @15 Balance 7.;
run;

/**
 * Dump formatted dataset
 */
title "Financial";
proc print data = financial;
  format DOB mmddyy10.
         Balance dollar11.2;
run;
