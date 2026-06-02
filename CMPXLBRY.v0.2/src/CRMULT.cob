       COPY GCWA.
       IDENTIFICATION DIVISION.
       PROGRAM-ID.    CRMULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==W-TMP==.
       LINKAGE SECTION.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==L-IN1==.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==L-IN2==.
        COPY COMPLEX REPLACING LEADING ==PRFX== BY ==L-OUT==.
       PROCEDURE DIVISION USING
        L-IN1-COMPLEX,
        L-IN2-COMPLEX,
        L-OUT-COMPLEX.
      ******************************************************************
      * @brief COMPLEX-MULT-RETURN
      *
      * @param [in] L-IN1-COMPLEX,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-COMPLEX,
      *   with members L-IN2-RE, L-IN2-IM.
      * @param [out] L-OUT-COMPLEX,
      *   with members L-OUT-RE, L-OUT-IM.
      *
      *   (a + b i)(c + d i) = a c - b d + i( b c + a d)
       >>IF GCOBOL-WORKAROUNDS = 1
      * gcobol workaround: COMP-2 subtraction miscompiles; use + (x * -1)
           COMPUTE W-TMP-RE =
             (L-IN1-RE * L-IN2-RE) +
             (L-IN1-IM * L-IN2-IM * -1)
       >>ELSE
           COMPUTE W-TMP-RE =
             (L-IN1-RE * L-IN2-RE) -
             (L-IN1-IM * L-IN2-IM)
       >>END-IF

           COMPUTE W-TMP-IM =
             (L-IN1-IM * L-IN2-RE) +
             (L-IN1-RE * L-IN2-IM)

      * temps in case there's aliasing:
           MOVE W-TMP-COMPLEX TO L-OUT-COMPLEX

           GOBACK
           .

      * vim: et ts=2 sw=2
