       IDENTIFICATION DIVISION.
       FUNCTION-ID.   GA-MAKE-MV.
       DATA DIVISION.
       LINKAGE SECTION.
        COPY GATYPES.
       01  LK-SC     TYPE REAL-T.
       01  LK-X      TYPE REAL-T.
       01  LK-Y      TYPE REAL-T.
       01  LK-PS     TYPE REAL-T.
       01  LK-RESULT TYPE MV-T.
       PROCEDURE DIVISION USING BY VALUE LK-SC, LK-X, LK-Y, LK-PS
                          RETURNING LK-RESULT.
      ******************************************************************
      * @brief GA-MAKE-MV -- a general multivector from its 4 coordinates.
      *
      *   sc + x e_1 + y e_2 + ps e_{12}
      *
      * @param [in]  LK-SC, LK-X, LK-Y, LK-PS  the coordinates.
      * @returns     LK-RESULT  grade -1 (general) multivector.
      ******************************************************************
           MOVE -1     TO LK-RESULT::MV-GRADE
           MOVE LK-SC  TO LK-RESULT::MV-G02::CT-RE
           MOVE LK-PS  TO LK-RESULT::MV-G02::CT-IM
           MOVE LK-X   TO LK-RESULT::MV-G1::CT-RE
           MOVE LK-Y   TO LK-RESULT::MV-G1::CT-IM
           GOBACK
           .
       END FUNCTION GA-MAKE-MV.

      * vim: et ts=2 sw=2
