*&---------------------------------------------------------------------*
*& Report ZABA10_07_LOOPS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_loops_1.

*DO 3 TIMES.
*write / 'Cycle number: ' && sy-index.
*
**CONCATENATE 'Cycle number: ' sy-index into data(message).
**write / message.
*
*ENDDO.

*DO.
*  WRITE / 'Cycle number: ' && sy-index.
*
*  IF sy-index > 10.
*    EXIT.
*  ENDIF.
*
*ENDDO.

WHILE sy-index <= 10.
  WRITE / 'Cycle number: ' && sy-index.
ENDWHILE.
