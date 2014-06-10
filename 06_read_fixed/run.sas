/**
 * Read a fixed size lines into a dataset
 */
data financial;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\06_read_fixed\data.txt";

  input Subj $ 1-3
        DOB $ 4-13
        Gender $ 14
        Balance 15-21;
run;

/**
 * Dump dataset
 */
title "Financial";
proc print data = financial;
run;
