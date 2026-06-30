       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-PSEUDO.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-P      TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING BY VALUE LK-P
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-MAKE-PSEUDO -- the grade-2 multivector p e_{12}.
      *
      * @param [in]  LK-P       the pseudoscalar coordinate.
      * @returns     LK-RESULT  grade 2 multivector.
      ******************************************************************
           MOVE 2     TO LK-RESULT::MV-GRADE
           MOVE 0     TO LK-RESULT::MV-G02::CT-RE
           MOVE LK-P  TO LK-RESULT::MV-G02::CT-IM
           MOVE 0     TO LK-RESULT::MV-G1::CT-RE
           MOVE 0     TO LK-RESULT::MV-G1::CT-IM
           GOBACK
           .
       END FUNCTION GA-MAKE-PSEUDO.

      * vim: et ts=2 sw=2
