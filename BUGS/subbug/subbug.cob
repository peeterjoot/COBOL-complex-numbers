      * https://gcc.gnu.org/bugzilla/show_bug.cgi?id=125577
      * gcobol -O0 -main -o subbug subbug.cob && ./subbug
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBBUG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A COMP-2 VALUE 9.
       01 B COMP-2 VALUE 1.
       01 R COMP-2.
       PROCEDURE DIVISION.
           COMPUTE R = A - B
           DISPLAY 'COMPUTE  A - B      = ' R '   expected 8'
           SUBTRACT B FROM A GIVING R
           DISPLAY 'SUBTRACT B FROM A   = ' R '   expected 8'
           COMPUTE R = A + (B * -1)
           DISPLAY 'COMPUTE  A + (B*-1) = ' R '   expected 8'
           GOBACK.
