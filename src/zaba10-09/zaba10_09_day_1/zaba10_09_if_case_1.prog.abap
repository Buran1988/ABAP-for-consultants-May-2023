*&---------------------------------------------------------------------*
*& Report ZABA10_09_IF_CASE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_09_if_case_1.

PARAMETERS par_a type i.

DATA a TYPE i.
a = par_a.

*IF a > 0.
*  WRITE 'Possitive' COLOR COL_POSITIVE.
*ELSE.
*  WRITE 'NEGATIVE' COLOR COL_NEGATIVE.
*ENDIF.

CASE a.
  WHEN 3.
*    WRITE 'Вы ввели 3' COLOR COL_POSITIVE.
    MESSAGE 'Вы ввели 3' TYPE 'I'.
  WHEN -3.
*    WRITE 'Вы ввели -3' COLOR COL_NEGATIVE.
    MESSAGE 'Вы ввели -3' TYPE 'S'.
  WHEN OTHERS.
*    WRITE 'Вы ввели что-то другое' COLOR COL_NORMAL.
    MESSAGE 'Вы ввели что-то другое' TYPE 'X'.
ENDCASE.
