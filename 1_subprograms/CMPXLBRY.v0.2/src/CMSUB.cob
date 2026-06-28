       COPY GCWA.
       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CMSUB.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==L-IN1==.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==L-IN2==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-SUB-MODIFY
      *
      * @param [in,out] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      *
       >>IF GCOBOL-WORKAROUNDS = 1
      * gcobol workaround: COMP-2 subtraction miscompiles; use + (x * -1)
           COMPUTE L-IN1-RE =
             L-IN1-RE + (L-IN2-RE * -1)

           COMPUTE L-IN1-IM =
             L-IN1-IM + (L-IN2-IM * -1)
       >>ELSE
           COMPUTE L-IN1-RE =
             L-IN1-RE - L-IN2-RE

           COMPUTE L-IN1-IM =
             L-IN1-IM - L-IN2-IM
       >>END-IF

           GOBACK
           .

      * vim: et ts=2 sw=2
