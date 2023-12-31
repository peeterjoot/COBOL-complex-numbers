       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMINV.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY FLOAT REPLACING ==(PRFX)== BY ==W-MAGNITUDE-==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN-==.
       PROCEDURE DIVISION USING
        L-IN-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-INVERSE-MODIFY
      *
      * @param [in] L-IN-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      *
      * 1/(a + b i) = (a - b i)/(a^2 + b^2)
           COMPUTE W-MAGNITUDE-V =
             (L-IN-RE * L-IN-RE) +
             (L-IN-IM * L-IN-IM)

           COMPUTE L-IN-RE =
             L-IN-RE/W-MAGNITUDE-V

           COMPUTE L-IN-IM =
             -(L-IN-IM/W-MAGNITUDE-V)

           GOBACK
           .

      * vim: et ts=4 sw=4
