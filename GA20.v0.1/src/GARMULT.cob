       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GARMULT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LOCAL-STORAGE SECTION.
        COPY COMPLEX REPLACING ==(PRFX)== BY ==W-TC-==.
        COPY MV      REPLACING ==(PRFX)== BY ==W-TM-==.
        COPY CMPXLBRY.
      * COPY GA20.
       LINKAGE SECTION.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN1-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-IN2-==.
        COPY MV REPLACING ==(PRFX)== BY ==L-OUT-==.
       PROCEDURE DIVISION USING
        L-IN1-MV,
        L-IN2-MV,
        L-OUT-MV.
      ******************************************************************
      * @brief GA-MULT-RETURN
      *
      * @param [in] L-IN1-MV,
      *   with members L-IN1-RE, L-IN1-IM.
      * @param [in] L-IN2-MV,
      *   with members L-IN2-RE, L-IN2-IM.
      * @param [out] L-OUT-MV,
      *   with members L-OUT-RE, L-OUT-IM.
      *
      *
      *multivector /: multivector[_, m1_, m2_] ** multivector[_, n1_, n2_] :=
      *    multivector[-1, 
      *    m1 n1 + Conjugate[m2] n2, 
      *    n1 m2 + Conjugate[m1] n2 ]
      *
      *    m1 L-IN1-G02
      *    m2 L-IN1-G1
      *    n1 L-IN2-G02
      *    n2 L-IN2-G1
      *
      *    r1 L-OUT-G02
      *    r2 L-OUT-G1

           MOVE -1 TO W-TM-GRADE
           IF L-IN1-GRADE = 0
             MOVE L-IN2-GRADE TO W-TM-GRADE
           ELSE IF L-IN2-GRADE = 0
               MOVE L-IN1-GRADE TO W-TM-GRADE
           ELSE IF L-IN1-GRADE = 2
             IF L-IN2-GRADE = 1
               MOVE 1 TO W-TM-GRADE
             ELSE IF L-IN2-GRADE = 2
               MOVE 0 TO W-TM-GRADE
             END-IF
           ELSE IF L-IN2-GRADE = 2
             IF L-IN1-GRADE = 1
               MOVE 1 TO W-TM-GRADE
             END-IF
           END-IF
           .

           CALL COMPLEX-MULT-RETURN USING
             L-IN1-G02,
             L-IN2-G02,
             W-TM-G02

           MOVE L-IN1-G1 TO W-TC-COMPLEX
           CALL COMPLEX-CONJUGATE-MODIFY USING W-TC-COMPLEX
           CALL COMPLEX-MULT-MODIFY USING W-TC-COMPLEX, L-IN2-G1
           CALL COMPLEX-ADD-MODIFY USING W-TM-G02, W-TC-COMPLEX

           CALL COMPLEX-MULT-RETURN USING
             L-IN2-G02,
             L-IN1-G1,
             W-TM-G1

           MOVE L-IN1-G02 TO W-TC-COMPLEX
           CALL COMPLEX-CONJUGATE-MODIFY USING W-TC-COMPLEX
           CALL COMPLEX-MULT-MODIFY USING W-TC-COMPLEX, L-IN2-G1
           CALL COMPLEX-ADD-MODIFY USING W-TM-G1, W-TC-COMPLEX

           MOVE W-TM-MV TO L-OUT-MV

           GOBACK
           .

      * vim: et ts=2 sw=2
