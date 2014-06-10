/**
 * Read a .TXT file into a dataset
 */
data portfolio;
  /* This path should be replaced with your own as SAS doesn't allows relative paths */
  infile "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\02_read_txt_2\data.txt";

  input Symbol $ Price Quantity;

  /* Total value of each stock */
  Value = Price * Quantity;
run;

/**
 * Print average price and quantity of this portofolio
 */
title "Summary Statistics";
proc means data = portfolio mean;
  var Price Quantity;
run;
