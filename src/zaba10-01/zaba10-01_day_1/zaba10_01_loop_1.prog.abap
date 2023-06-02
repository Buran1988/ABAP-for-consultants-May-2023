*&---------------------------------------------------------------------*
*& Report ZABA10_01_LOOP_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_loop_1.


*DO 10 TIMES.
*  WRITE / 'Проход цикла номер:' && sy-index.

"  concatenate 'Проход цикла номер:' sy-index ointp data(message).
"  write / message.
*ENDDO.

DO.
  WRITE / 'Проход цикла номер:' && sy-index.

  IF sy-index > 28.
    EXIT.
  ENDIF.
ENDDO.

WHILE sy-index < 8.
  WRITE / 'Проход цикла номер:' && sy-index.

ENDWHILE.
