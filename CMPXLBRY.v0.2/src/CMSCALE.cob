       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMSCALE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY FLOAT   REPLACING ==(PRFX)== BY ==L-IN2-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-V.
      ******************************************************************
      * @brief COMPLEX-SCALE-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN-RE, L-IN-IM.
      * @param [in] L-IN2-V
      *
           COMPUTE L-IN1-RE =
             L-IN1-RE * L-IN2-V

           COMPUTE L-IN1-IM =
             L-IN1-IM * L-IN2-V

           GOBACK
           .

      * vim: et ts=2 sw=2
