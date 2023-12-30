       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMNEGATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-NEGPARM-IN1-==.
       PROCEDURE DIVISION USING
        LK-NEGPARM-IN1-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-NEGATE-MODIFY
      *
      * @param [in,out] LK-NEGPARM-IN1-COMPLEX,
      *   with members LK-NEGPARM-IN-RE, LK-NEGPARM-IN-IM.
      *
           COMPUTE LK-NEGPARM-IN1-RE =
             LK-NEGPARM-IN1-RE * -1

           COMPUTE LK-NEGPARM-IN1-IM =
             LK-NEGPARM-IN1-IM * -1

           GOBACK
           .

      * vim: et ts=4 sw=4
