       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-VECTOR.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-X      TYPE REAL-T.
       01  LK-Y      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING BY VALUE LK-X, LK-Y
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-MAKE-VECTOR -- the grade-1 multivector x e_1 + y e_2.
      *
      * @param [in]  LK-X, LK-Y  the e_1 and e_2 coordinates.
      * @returns     LK-RESULT   grade 1 multivector.
      ******************************************************************
           MOVE 1     TO LK-RESULT::MV-GRADE
           MOVE 0     TO LK-RESULT::MV-G02::CT-RE
           MOVE 0     TO LK-RESULT::MV-G02::CT-IM
           MOVE LK-X  TO LK-RESULT::MV-G1::CT-RE
           MOVE LK-Y  TO LK-RESULT::MV-G1::CT-IM
           GOBACK
           .
       END FUNCTION GA-MAKE-VECTOR.

      * vim: et ts=2 sw=2
