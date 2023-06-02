*&---------------------------------------------------------------------*
*& Report ZABA10_06_IF_LOOPS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_IF_LOOPS_1.

*DO 3 TIMES.
*  WRITE / 'Проход цикла № ' && sy-index.
*
*  CONCATENATE 'Проход цикла № ' sy-index INTO data(message).
*  WRITE / message.
*ENDDO.

WHILE sy-index <= 10.
  WRITE / 'Проход цикла ' && sy-index.
ENDWHILE.
