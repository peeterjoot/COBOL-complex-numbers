      ******************************************************************
      * REPRO.cob
      *
      * Minimal repro for gcobol COMP-2 -> external-float DISPLAY
      * mis-rounding the trailing decimal digit (gcc PR125615).
      *
      * Each COMP-2 below holds the correctly-rounded IEEE-754 binary64
      * value of a single divide.  DISPLAY of that COMP-2 should print
      * the correctly-rounded 17-significant-digit decimal of the stored
      * double.  gcobol prints a neighbouring value in the last digit.
      *
      *   build:  gcobol -dialect ibm REPRO.cob -o repro
      *   run:    ./repro
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPRO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  X            COMP-2.
       PROCEDURE DIVISION.
      *    1.0/5.0 : nearest double is 0x3FC999999999999A
      *    correct 17-digit decimal = .20000000000000001E 00
           COMPUTE X = 1.0E0 / 5.0E0
           DISPLAY '1.0/5.0   = ' X
           DISPLAY '  expect  = ' '.20000000000000001E 00'

      *    2.0/5.0 : nearest double is 0x3FD999999999999A
      *    correct 17-digit decimal = .40000000000000002E 00
           COMPUTE X = 2.0E0 / 5.0E0
           DISPLAY '2.0/5.0   = ' X
           DISPLAY '  expect  = ' '.40000000000000002E 00'

      *    11.0/25.0 : nearest double is 0x3FDC28F5C28F5C29
      *    correct 17-digit decimal = .44000000000000000E 00
           COMPUTE X = 11.0E0 / 25.0E0
           DISPLAY '11.0/25.0 = ' X
           DISPLAY '  expect  = ' '.44000000000000000E 00'

           GOBACK
           .
