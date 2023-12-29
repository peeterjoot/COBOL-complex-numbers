       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRREAL.
      *ENVIRONMENT DIVISION.
      *CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-REAL-IN-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==LK-REAL-OUT-==.
       PROCEDURE DIVISION USING
        LK-REAL-IN1-COMPLEX,
        LK-REAL-OUT-V
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-REAL
      *
      * @param [in] LK-REAL-IN-COMPLEX,
      *   with members LK-REAL-IN-RE, LK-REAL-IN-IM.
      * @param [out] LK-REAL-V,
       COMPLEX-REAL.
           MOVE LK-REAL-IN-RE TO LK-REAL-OUT-V

           GOBACK
           .

      * vim: et ts=4 sw=4
