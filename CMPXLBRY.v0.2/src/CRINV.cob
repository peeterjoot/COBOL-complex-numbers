       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRINV.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY FLOAT REPLACING ==(PRFX)== BY ==W-MAGNITUDE-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN-COMPLEX,
        L-OUT-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-INVERSE-RETURN
      *
      * @param [in] L-IN-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      * @param [out] L-OUT-COMPLEX,
      *   with members L-OUT-RE, L-OUT-IM.
      *
      *   1/(a + b i) = (a - b i)/(a^2 + b^2)
           COMPUTE W-MAGNITUDE-V =
             (L-IN-RE * L-IN-RE) +
             (L-IN-IM * L-IN-IM)

           COMPUTE L-OUT-RE =
             L-IN-RE/W-MAGNITUDE-V

           COMPUTE L-OUT-IM =
             -(L-IN-IM/W-MAGNITUDE-V)

           GOBACK
           .

      * vim: et ts=2 sw=2
