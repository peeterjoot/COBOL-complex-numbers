       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRIMAG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN-COMPLEX,
        L-OUT-V.
      ******************************************************************
      * @brief COMPLEX-IMAG-RETURN
      *
      * @param [in] L-IN-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      * @param [out] LK-IMAG-V,
           MOVE L-IN-IM TO L-OUT-V

           GOBACK
           .

      * vim: et ts=2 sw=2
