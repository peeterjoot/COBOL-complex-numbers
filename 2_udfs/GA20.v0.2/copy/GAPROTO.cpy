      ******************************************************************
      * copy/GAPROTO.cpy -- prototypes for every GA20 function.
      *
      * COPY this after the END PROGRAM / END FUNCTION of any unit that
      * references the library, alongside REPOSITORY. COPY GAREPOS.  Each
      * prototype is a bodiless FUNCTION-ID ... IS PROTOTYPE whose typed
      * LINKAGE tells the compiler each function's argument and result
      * types.  A same-translation-unit *definition* of a like-named
      * function takes precedence over its prototype here, so a composite
      * function file (GA-SYMMETRIC, GA-ANTISYMMETRIC) may COPY this
      * without conflict.
      *
      * Requires -dialect=ibm_ent65.
      ******************************************************************
       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-MV IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-SC     TYPE REAL-T.
       01  LK-X      TYPE REAL-T.
       01  LK-Y      TYPE REAL-T.
       01  LK-PS     TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-SC, LK-X, LK-Y, LK-PS
                          RETURNING LK-RESULT.
       END FUNCTION GA-MAKE-MV.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-SCALAR IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-S RETURNING LK-RESULT.
       END FUNCTION GA-MAKE-SCALAR.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-VECTOR IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-X      TYPE REAL-T.
       01  LK-Y      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-X, LK-Y RETURNING LK-RESULT.
       END FUNCTION GA-MAKE-VECTOR.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-PSEUDO IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-P      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-P RETURNING LK-RESULT.
       END FUNCTION GA-MAKE-PSEUDO.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-ADD IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B RETURNING LK-RESULT.
       END FUNCTION GA-ADD.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SUB IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B RETURNING LK-RESULT.
       END FUNCTION GA-SUB.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SCALE IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-S RETURNING LK-RESULT.
       END FUNCTION GA-SCALE.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MULT IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B RETURNING LK-RESULT.
       END FUNCTION GA-MULT.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-SYMMETRIC IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B RETURNING LK-RESULT.
       END FUNCTION GA-SYMMETRIC.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-ANTISYMMETRIC IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B RETURNING LK-RESULT.
       END FUNCTION GA-ANTISYMMETRIC.

       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-GRADE-SELECT IS PROTOTYPE.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-I      TYPE GRADE-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-I RETURNING LK-RESULT.
       END FUNCTION GA-GRADE-SELECT.
      *
      * GA-DISPLAY is an ordinary PROGRAM-ID reached by a static CALL, so
      * it has no function prototype here.
      ******************************************************************
