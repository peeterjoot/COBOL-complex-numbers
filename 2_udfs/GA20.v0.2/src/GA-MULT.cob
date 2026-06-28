       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MULT.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
       COPY CREPOS.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY GATYPES.
       01  LS-T1     TYPE COMPLEX-T.
       01  LS-T2     TYPE COMPLEX-T.
       01  LS-T3     TYPE COMPLEX-T.
       LINKAGE SECTION.
       01  LK-A      TYPE MV-T.
       01  LK-B      TYPE MV-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, LK-B
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-MULT -- the geometric product LK-A LK-B.
      *
      * With each multivector split as (m1 = even half, m2 = vector half):
      *
      *   (m1 + m2)(n1 + n2) = [ m1 n1 + conj(m2) n2 ]            (even)
      *                      + [ n1 m2 + conj(m1) n2 ] e_1        (vector)
      *
      * where the even halves multiply as complex numbers and conj() is
      * complex conjugation -- so the whole product is four complex
      * multiplies, two conjugations and two complex adds.
      *
      * @param [in]  LK-A, LK-B  the factors.
      * @returns     LK-RESULT   LK-A LK-B.
      ******************************************************************
      * Resulting grade (see the v0.1 GARMULT derivation): a scalar factor
      * passes the other's grade through; e_{12} maps 1<->1 and 2<->0;
      * anything else is a general multivector.
           MOVE -1 TO LK-RESULT::MV-GRADE
           IF LK-A::MV-GRADE = 0
             MOVE LK-B::MV-GRADE TO LK-RESULT::MV-GRADE
           ELSE IF LK-B::MV-GRADE = 0
               MOVE LK-A::MV-GRADE TO LK-RESULT::MV-GRADE
           ELSE IF LK-A::MV-GRADE = 2
             IF LK-B::MV-GRADE = 1
               MOVE 1 TO LK-RESULT::MV-GRADE
             ELSE IF LK-B::MV-GRADE = 2
               MOVE 0 TO LK-RESULT::MV-GRADE
             END-IF
           ELSE IF LK-B::MV-GRADE = 2
             IF LK-A::MV-GRADE = 1
               MOVE 1 TO LK-RESULT::MV-GRADE
             END-IF
           END-IF
           .

      * even half: m1 n1 + conj(m2) n2
           MOVE FUNCTION COMPLEX-MULT(LK-A::MV-G02, LK-B::MV-G02)
             TO LS-T1
           MOVE FUNCTION COMPLEX-CONJUGATE(LK-A::MV-G1) TO LS-T2
           MOVE FUNCTION COMPLEX-MULT(LS-T2, LK-B::MV-G1) TO LS-T3
           MOVE FUNCTION COMPLEX-ADD(LS-T1, LS-T3)
             TO LK-RESULT::MV-G02

      * vector half: n1 m2 + conj(m1) n2
           MOVE FUNCTION COMPLEX-MULT(LK-B::MV-G02, LK-A::MV-G1)
             TO LS-T1
           MOVE FUNCTION COMPLEX-CONJUGATE(LK-A::MV-G02) TO LS-T2
           MOVE FUNCTION COMPLEX-MULT(LS-T2, LK-B::MV-G1) TO LS-T3
           MOVE FUNCTION COMPLEX-ADD(LS-T1, LS-T3)
             TO LK-RESULT::MV-G1
           GOBACK
           .
       END FUNCTION GA-MULT.

      * Prototypes for the COMPLEX-* functions called above.
       COPY CPROTO.

      * vim: et ts=2 sw=2
