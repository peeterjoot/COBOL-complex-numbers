      ******************************************************************
      * copy/GAREPOS.cpy -- REPOSITORY members of the GA20 library.
      *
      * COPY this inside the REPOSITORY paragraph to make every GA20
      * function name available to a program:
      *
      *       REPOSITORY.
      *       COPY GAREPOS.
      *
      * An application that needs only a subset may instead list those
      * FUNCTION entries by hand rather than copying this member.
      ******************************************************************
           FUNCTION GA-MAKE-MV
           FUNCTION GA-MAKE-SCALAR
           FUNCTION GA-MAKE-VECTOR
           FUNCTION GA-MAKE-PSEUDO
           FUNCTION GA-ADD
           FUNCTION GA-SUB
           FUNCTION GA-SCALE
           FUNCTION GA-MULT
           FUNCTION GA-SYMMETRIC
           FUNCTION GA-ANTISYMMETRIC
           FUNCTION GA-GRADE-SELECT.
      * GA-DISPLAY is an ordinary PROGRAM-ID (a side-effecting display),
      * reached by a static CALL, so it is deliberately not a REPOSITORY
      * function here.
      ******************************************************************
