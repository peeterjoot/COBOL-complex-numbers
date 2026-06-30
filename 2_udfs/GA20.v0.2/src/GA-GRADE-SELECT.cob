       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-GRADE-SELECT.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-A      TYPE MV-T.
       01  LK-I      TYPE GRADE-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING LK-A, BY VALUE LK-I
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-GRADE-SELECT -- <A>_i, the grade-i part of A.
      *
      * @param [in]  LK-A       the multivector.
      * @param [in]  LK-I       the grade to keep (0, 1 or 2).
      * @returns     LK-RESULT  the grade-i part, as a graded multivector.
      ******************************************************************
           EVALUATE LK-I
             WHEN 0 PERFORM SELECT-GRADE-0
             WHEN 1 PERFORM SELECT-GRADE-1
             WHEN 2 PERFORM SELECT-GRADE-2
           END-EVALUATE
           GOBACK
           .

        SELECT-GRADE-0.
           MOVE 0 TO LK-RESULT::MV-GRADE
           MOVE LK-A::MV-G02::CT-RE TO LK-RESULT::MV-G02::CT-RE
           MOVE 0 TO LK-RESULT::MV-G02::CT-IM
           MOVE 0 TO LK-RESULT::MV-G1::CT-RE
           MOVE 0 TO LK-RESULT::MV-G1::CT-IM
           .
        SELECT-GRADE-1.
           MOVE 1 TO LK-RESULT::MV-GRADE
           MOVE 0 TO LK-RESULT::MV-G02::CT-RE
           MOVE 0 TO LK-RESULT::MV-G02::CT-IM
           MOVE LK-A::MV-G1 TO LK-RESULT::MV-G1
           .
        SELECT-GRADE-2.
           MOVE 2 TO LK-RESULT::MV-GRADE
           MOVE 0 TO LK-RESULT::MV-G02::CT-RE
           MOVE LK-A::MV-G02::CT-IM TO LK-RESULT::MV-G02::CT-IM
           MOVE 0 TO LK-RESULT::MV-G1::CT-RE
           MOVE 0 TO LK-RESULT::MV-G1::CT-IM
           .
       END FUNCTION GA-GRADE-SELECT.

      * vim: et ts=2 sw=2
