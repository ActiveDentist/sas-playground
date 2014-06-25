/**
 * Read datalines into a dataset
 * Fecha, Hora, Temperatura, Humedad, Presión atmosférica
 * Calcultate: sensación térmica = (temperatura * humedad) / presión atmosférica
 */
data temperatures;
  input Fecha $ 1-8 Hora $ 9-14 Temperatura Humedad PresionAtmosferica;
  SensacionTermica = (Temperatura * Humedad) / PresionAtmosferica;

datalines;
11/06/14 00:00 8.4 74 408
11/06/14 08:00 9.2 78 722
11/06/14 16:00 16.0 92 1050
11/06/14 24:00 12.2 70 802
12/06/14 00:00 12.2 50 904
12/06/14 08:00 9.9 60 945
12/06/14 16:00 10.3 70 1004
12/06/14 24:00 6.0 50 1032
;

/**
 * Dump dataset
 */
title "Temperaturas";
proc print data = temperatures;
run;
