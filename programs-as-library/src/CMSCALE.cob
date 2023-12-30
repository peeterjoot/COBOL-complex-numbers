       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMSCALE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-SCALEPARM-IN1-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==LK-SCALEPARM-IN2-==.
       PROCEDURE DIVISION USING
        LK-SCALEPARM-IN1-COMPLEX,
        LK-SCALEPARM-IN2-V.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-SCALE
      *
      * @param [in,out] LK-SCALEPARM-IN1-COMPLEX,
      *   with members LK-SCALEPARM-IN-RE, LK-SCALEPARM-IN-IM.
      * @param [in] LK-SCALEPARM-IN2-V
      *
      *COMPLEX-SCALE.
           COMPUTE LK-SCALEPARM-IN1-RE =
             LK-SCALEPARM-IN1-RE * LK-SCALEPARM-IN2-V

           COMPUTE LK-SCALEPARM-IN1-IM =
             LK-SCALEPARM-IN1-IM * LK-SCALEPARM-IN2-V

           GOBACK
           .

      * vim: et ts=4 sw=4
