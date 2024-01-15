       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRSUB.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX,
        L-OUT-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-SUB-RETURN
      *
      * @param [in] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      * @param [out] L-OUT-COMPLEX,
      *   with members L-OUT-RE, L-OUT-IM.
      *
           COMPUTE L-OUT-RE =
             L-IN1-RE - L-IN2-RE

           COMPUTE L-OUT-IM =
             L-IN1-IM - L-IN2-IM

           GOBACK
           .

      * vim: et ts=2 sw=2
