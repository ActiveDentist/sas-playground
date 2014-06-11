/**
 * Read a .XLS file into a dataset
 * datafile should be replaced with your own as SAS doesn't allows relative paths
 */
proc import out = beatles
            datafile = "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\12_where_statement\data.xls"
            dbms = excel
            replace;
  /* Read only first sheet */
  range = "Sheet1$";
run;

/**
 * Build a filtered dataset from the previous
 * one with all the guitar players
 */
data guitarPlayers;
  set beatles;
  where Instrument = 'Guitar';
run;

/**
 * Print beatles dataset
 */
title "The Beatles guitar players";
proc print data = guitarPlayers;
run;
