      ******************************************************************
      * copy/CPROTO.cpy -- prototypes for every CMPXLBRY function.
      *
      * COPY this after the END PROGRAM / END FUNCTION of any unit that
      * references the library, alongside REPOSITORY. FUNCTION ... entries.
      * Each prototype is a bodiless FUNCTION-ID ... IS PROTOTYPE whose
      * typed LINKAGE tells the compiler each function's argument and
      * result types.  A same-translation-unit *definition* of a
      * like-named function takes precedence over its prototype here, so a
      * function file (e.g. COMPLEX-DIVIDE) may COPY this without conflict.
      *
      * Requires -dialect=ibm_ent65.
      ******************************************************************
       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-ADD IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-ADD.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-SUB IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-SUB.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-MULT IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-MULT.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-DIVIDE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-B      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-DIVIDE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-INVERSE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-INVERSE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-SCALE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A, BY VALUE LK-S
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-SCALE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-NEGATE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-NEGATE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-CONJUGATE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE COMPLEX-T.
       PROCEDURE DIVISION USING LK-A
                          RETURNING LK-RESULT.
       END FUNCTION COMPLEX-CONJUGATE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-REAL IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE REAL-T.
       PROCEDURE DIVISION USING LK-A RETURNING LK-RESULT.
       END FUNCTION COMPLEX-REAL.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-IMAG IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-RESULT TYPE REAL-T.
       PROCEDURE DIVISION USING LK-A RETURNING LK-RESULT.
       END FUNCTION COMPLEX-IMAG.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-FORMAT IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY CTYPES.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-LEN    TYPE STATUS-T.
       01  LK-RESULT PIC X(27).
       PROCEDURE DIVISION USING LK-A, LK-LEN RETURNING LK-RESULT.
       END FUNCTION COMPLEX-FORMAT.
      ******************************************************************
