       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRIMAG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==LK-IMAG-IN-==.
        COPY FLOAT REPLACING ==(PRFX)== BY ==LK-IMAG-OUT-==.
       PROCEDURE DIVISION USING
        LK-IMAG-IN-COMPLEX,
        LK-IMAG-OUT-V.
      ******************************************************************
      * LIBRARY ROUTINE: COMPLEX-IMAG
      *
      * @param [in] LK-IMAG-IN-COMPLEX,
      *   with members LK-IMAG-IN-RE, LK-IMAG-IN-IM.
      * @param [out] LK-IMAG-V,
      *COMPLEX-IMAG.
           MOVE LK-IMAG-IN-IM TO LK-IMAG-OUT-V

           GOBACK
           .

      * vim: et ts=4 sw=4
