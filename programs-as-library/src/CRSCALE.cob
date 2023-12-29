       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRSCALE.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-SCALEPARM-IN1-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==LK-SCALEPARM-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-SCALEPARM-OUT-==.
       PROCEDURE DIVISION USING
        LK-SCALEPARM-IN1-COMPLEX,
        LK-SCALEPARM-IN2-V,
        LK-SCALEPARM-OUT-COMPLEX.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-SCALE
      *
      * @param [in] LK-SCALEPARM-IN1-COMPLEX,
      *   with members LK-SCALEPARM-IN-RE, LK-SCALEPARM-IN-IM.
      * @param [in] LK-SCALEPARM-IN2-V
      * @param [out] LK-SCALEPARM-OUT-COMPLEX,
      *   with members LK-SCALEPARM-OUT-RE, LK-SCALEPARM-OUT-IM.
      *
       COMPLEX-SCALE.
           COMPUTE LK-SCALEPARM-OUT-RE =
             LK-SCALEPARM-IN1-RE * LK-SCALEPARM-IN2-V

           COMPUTE LK-SCALEPARM-OUT-IM =
             LK-SCALEPARM-IN1-IM * LK-SCALEPARM-IN2-V

           GOBACK
           .

      * vim: et ts=4 sw=4
