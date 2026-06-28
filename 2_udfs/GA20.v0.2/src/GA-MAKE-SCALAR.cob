       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-SCALAR.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-S      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-S
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-MAKE-SCALAR -- the grade-0 multivector s.
      *
      * @param [in]  LK-S       the scalar value.
      * @returns     LK-RESULT  grade 0 multivector.
      ******************************************************************
           MOVE 0     TO LK-RESULT::MV-GRADE
           MOVE LK-S  TO LK-RESULT::MV-G02::CT-RE
           MOVE 0     TO LK-RESULT::MV-G02::CT-IM
           MOVE 0     TO LK-RESULT::MV-G1::CT-RE
           MOVE 0     TO LK-RESULT::MV-G1::CT-IM
           GOBACK
           .
       END FUNCTION GA-MAKE-SCALAR.

      * vim: et ts=2 sw=2
