*&---------------------------------------------------------------------*
*& Report ZABA10_07_IF_CASE_1
*&---------------------------------------------------------------------*
*& пробный IF
*&---------------------------------------------------------------------*
REPORT zaba10_07_if_case_1.

PARAMETERS par_a TYPE i.

DATA a TYPE i.

a = par_a.

*IF a > 0.
*  WRITE 'positive' COLOR COL_POSITIVE.
*ELSE.
*  WRITE 'negative' COLOR COL_NEGATIVE.
*ENDIF.

CASE a.
  WHEN 3.
    MESSAGE 'Вы ввели норм' TYPE 'S'.
  WHEN -3.
*    WRITE 'Не это' COLOR COL_NEGATIVE.
    message 'Не это' type 'I'.
  WHEN OTHERS.
*    WRITE 'positive' COLOR COL_NORMAL.
    MESSAGE 'positive' type 'X'.
ENDCASE.
