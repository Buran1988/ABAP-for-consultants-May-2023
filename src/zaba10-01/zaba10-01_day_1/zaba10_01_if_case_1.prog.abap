*&---------------------------------------------------------------------*
*& Report ZABA10_01_IF_CASE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_if_case_1.

PARAMETERS par_a TYPE i.

DATA: a TYPE i.

a = par_a.

*IF a > 0.
*  WRITE / 'Check' COLOR COL_POSITIVE.

*ELSE.
*  WRITE / 'To Do' COLOR COL_NEGATIVE.

*ENDIF.



CASE a.
  WHEN 0.
    MESSAGE 'введено' TYPE 'I'.
*    WRITE / 'Check' COLOR COL_POSITIVE.

  WHEN 1.
    WRITE / 'To Do' COLOR COL_NEGATIVE.

  WHEN OTHERS.
    WRITE / 'Other' COLOR COL_NORMAL.

ENDCASE.
