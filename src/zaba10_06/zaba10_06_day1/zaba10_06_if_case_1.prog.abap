*&---------------------------------------------------------------------*
*& Report ZABA10_06_IF_CASE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_IF_CASE_1.

PARAMETERS par_a TYPE i.

DATA a TYPE i.

a = -3.

*IF par_a > 0.
*  WRITE 'Positive' COLOR COL_POSITIVE.
*ELSE.
*  WRITE 'Negative' COLOR COL_NEGATIVE.
*ENDIF.

CASE par_a.
  WHEN 3.
*    WRITE 'Вы ввели 3' COLOR COL_POSITIVE.
    MESSAGE 'Вы ввели 3' TYPE 'I'.
  WHEN -3.
    WRITE 'Вы ввели -3' COLOR COL_NEGATIVE.
  WHEN OTHERS.
    WRITE 'Вы ввели что-то другое' COLOR COL_NORMAL.
ENDCASE.
