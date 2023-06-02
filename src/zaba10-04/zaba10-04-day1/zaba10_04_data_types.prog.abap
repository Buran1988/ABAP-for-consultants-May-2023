*&---------------------------------------------------------------------*
*& Report ZABA10_04_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_DATA_TYPES.


DATA my_var_1 TYPE string.

DATA:   ddate TYPE d,
        ttime TYPE t.
DATA my_char TYPE c LENGTH 8.


my_var_1 = 'ВСЕМ ПРИВЕТ!'.

ddate = '20230501'.
ttime = '131000'.
WRITE / ddate.
WRITE / ttime(2).

WRITE my_var_1.
