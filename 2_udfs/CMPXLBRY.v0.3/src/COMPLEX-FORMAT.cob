       IDENTIFICATION DIVISION.
       FUNCTION-ID.   COMPLEX-FORMAT.
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
        COPY CTYPES.
       01  LS-RE-ED  PIC -(2)9.9(6).
       01  LS-IM-ED  PIC -(2)9.9(6).
       01  LS-IM-MAG TYPE REAL-T.
       01  LS-LINE.
           05  LS-LN-RE   PIC X(10).
           05  LS-LN-OP   PIC X(4).
           05  LS-LN-IM   PIC X(10).
           05  LS-LN-TAIL PIC X(3).
       LINKAGE SECTION.
       01  LK-A      TYPE COMPLEX-T.
       01  LK-LEN    TYPE STATUS-T.
       01  LK-RESULT PIC X(27).
       PROCEDURE DIVISION USING LK-A, LK-LEN RETURNING LK-RESULT.
      ******************************************************************
      * @brief COMPLEX-FORMAT -- render a + b i as printable text.
      *
      *   b = 0 : "<a>"
      *   b > 0 : "<a> + (<b>) I"
      *   b < 0 : "<a> - (<|b|>) I"
      *
      * @param [in]  LK-A         the complex value.
      * @param [out] LK-LEN       length of the meaningful text in
      *                           LK-RESULT (so the caller can display a
      *                           slice with no trailing padding).
      * @returns     LK-RESULT    the formatted text, blank padded.
      *
      * The line is assembled in a fixed group (the STRING verb and the
      * TRIM intrinsic are avoided here), then moved into the result.
      * The -(2)9 edit holds magnitudes < 1000.
      ******************************************************************
           MOVE LK-A::CT-RE TO LS-RE-ED
           MOVE LS-RE-ED TO LS-LN-RE
           MOVE SPACES TO LS-LN-OP, LS-LN-IM, LS-LN-TAIL

           IF LK-A::CT-IM > 0
               MOVE LK-A::CT-IM TO LS-IM-ED
               MOVE ' + (' TO LS-LN-OP
               MOVE LS-IM-ED TO LS-LN-IM
               MOVE ') I' TO LS-LN-TAIL
               MOVE 27 TO LK-LEN
           ELSE
             IF LK-A::CT-IM < 0
               COMPUTE LS-IM-MAG = LK-A::CT-IM * -1
               MOVE LS-IM-MAG TO LS-IM-ED
               MOVE ' - (' TO LS-LN-OP
               MOVE LS-IM-ED TO LS-LN-IM
               MOVE ') I' TO LS-LN-TAIL
               MOVE 27 TO LK-LEN
             ELSE
               MOVE 10 TO LK-LEN
             END-IF
           END-IF

           MOVE LS-LINE TO LK-RESULT
           GOBACK
           .
       END FUNCTION COMPLEX-FORMAT.

      * vim: et ts=2 sw=2
