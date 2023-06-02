*&---------------------------------------------------------------------*
*& Report ZABA10_99_LOOPS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_loops.

*DATA MESSAGE TYPE string.

*DO 3 TIMES.
*  WRITE / 'Проход цикла номер: ' && sy-index.
*
**  CONCATENATE 'Проход цикла номер: ' sy-index INTO message.
**  write / message.
*
*ENDDO.

*DO.
*  WRITE / 'Проход цикла номер: ' && sy-index.
*
*  IF sy-index > 10.
*    EXIT.
*  ENDIF.
*
*ENDDO.

WHILE sy-index <= 10 AND sy-index <> 7.
  WRITE / 'Проход цикла номер: ' && sy-index.
ENDWHILE.
