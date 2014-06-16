/**
 * Defino la subrutina sortArray adentro de la librería sasuser.FCMP_cat.fcns
 */
proc fcmp outlib = sasuser.FCMP_cat.fcns;
  subroutine sortArray(n[*]);
    outargs n;
    do i = 1 to (dim(n) - 1);
      do j = 1 to (dim(n) - 1);
        if (n[j] > n[j+1]) then
          do;
            temp = n[j];
            n[j] = n[j+1];
            n[j+1] = temp;
          end;
      end;
    end;
  endsub;
run;

/**
 * Con esto cargo la librería sasuser.FCMP_cat en el runtime
 */
options cmplib = (sasuser.FCMP_cat);

proc fcmp;
  array numbers {10} 5 3 2 4 1 7 6 9 8 0;
  put "Bubble sort";
  put "unsorted = " numbers;
  call sortArray(numbers);
  put "sorted = " numbers;
quit;