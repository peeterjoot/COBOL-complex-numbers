       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRSCALE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-V,
        L-OUT-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-SCALE-RETURN
      *
      * @param [in] L-IN1-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      * @param [in] L-IN2-V
      * @param [out] L-OUT-COMPLEX,
      *   with members L-OUT-RE, L-OUT-IM.
      *
           COMPUTE L-OUT-RE =
             L-IN1-RE * L-IN2-V

           COMPUTE L-OUT-IM =
             L-IN1-IM * L-IN2-V

           GOBACK
           .

      * vim: et ts=4 sw=4
