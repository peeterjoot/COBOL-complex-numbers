       IDENTIFICATION DIVISION.
       PROGRAM-ID.    GA-DISPLAY.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY GATYPES.
       01  WS-PLUS    PIC XX VALUE '  '.
       01  WS-NAME    PIC X(20).
       LINKAGE SECTION.
       01  LK-N       PIC X(20).
       01  LK-A       TYPE MV-T.
       PROCEDURE DIVISION USING LK-N, LK-A.
      ******************************************************************
      * @brief GA-DISPLAY -- print "<name> <multivector>".
      *
      * Display is a side effect, not a value, so this is an ordinary
      * PROGRAM-ID subprogram reached by a static CALL -- not a UDF (a
      * COBOL UDF would have to return a meaningless result).
      *
      * A graded multivector prints only its present grade; a general one
      * (grade -1) prints every non-zero grade, one term per line with the
      * name shown once and a leading "+ " on continuation terms.  A wholly
      * zero multivector prints as "<name> 0".
      *
      * @param [in]  LK-N  the variable name (blank padded).
      * @param [in]  LK-A  the multivector.
      *
      * WS-PLUS starts blank each call (LOCAL-STORAGE) and doubles as the
      * "have we printed a term yet?" flag.
      ******************************************************************
           MOVE LK-N TO WS-NAME

           EVALUATE LK-A::MV-GRADE
             WHEN 0 PERFORM DISPLAY-GRADE-0
             WHEN 1 PERFORM DISPLAY-GRADE-1
             WHEN 2 PERFORM DISPLAY-GRADE-2
             WHEN OTHER PERFORM DISPLAY-MV
           END-EVALUATE

           IF WS-PLUS = SPACES
             DISPLAY WS-NAME 0
           END-IF
           GOBACK
           .

        DISPLAYED-NONZERO.
           MOVE '+ ' TO WS-PLUS
           MOVE SPACES TO WS-NAME
           .
        DISPLAY-GRADE-0.
           IF LK-A::MV-G02::CT-RE NOT = 0
             DISPLAY WS-NAME WS-PLUS '(' LK-A::MV-G02::CT-RE ')'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-GRADE-1.
           IF LK-A::MV-G1::CT-RE NOT = 0
             IF LK-A::MV-G1::CT-IM = 0
               DISPLAY WS-NAME WS-PLUS '(' LK-A::MV-G1::CT-RE ') e_1'
               PERFORM DISPLAYED-NONZERO
             ELSE
               DISPLAY WS-NAME WS-PLUS '(' LK-A::MV-G1::CT-RE
                 ') e_1 + (' LK-A::MV-G1::CT-IM ') e_2'
               PERFORM DISPLAYED-NONZERO
             END-IF
           ELSE IF LK-A::MV-G1::CT-IM NOT = 0
             DISPLAY WS-NAME WS-PLUS '(' LK-A::MV-G1::CT-IM ') e_2'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-GRADE-2.
           IF LK-A::MV-G02::CT-IM NOT = 0
             DISPLAY WS-NAME WS-PLUS '(' LK-A::MV-G02::CT-IM ') e_{12}'
             PERFORM DISPLAYED-NONZERO
           END-IF
           .
        DISPLAY-MV.
           PERFORM DISPLAY-GRADE-0 THROUGH DISPLAY-GRADE-2
           .
       END PROGRAM GA-DISPLAY.

      * vim: et ts=2 sw=2
