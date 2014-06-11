/**
 * Read a .XLS file into a dataset
 * datafile should be replaced with your own as SAS doesn't allows relative paths
 */
proc import out = grades
            datafile = "\\VBOXSVR\mdm\Algoritmos y Estructuras de Datos\sas-playground\13_in_statement\data.xls"
            dbms = excel
            replace;
  /* Read only first sheet */
  range = "Sheet1$";
run;

/**
 * Rewrite dataset to append Approved/Failed column
 * depending on the grade
 */
data grades;
  set grades;
  if Grade in ('A+', 'A', 'B', 'B+') then Status = 'Approved';
  else Status = 'Failed';
run;

/**
 * Print grades dataset
 */
title "Grades";
proc print data = grades;
run;