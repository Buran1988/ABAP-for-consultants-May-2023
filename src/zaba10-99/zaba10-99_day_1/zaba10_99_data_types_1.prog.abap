*&---------------------------------------------------------------------*
*& Report ZABA10_99_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_data_types_1.

DATA my_var_1 TYPE string.

DATA: my_date TYPE d,
      my_time TYPE t.

DATA my_char TYPE c LENGTH 8.
my_char = '1234567891011'.

my_var_1 = 'Всем привет!'.

my_date = '20230501'.
my_time = '130000'.

WRITE my_var_1.
WRITE / my_date.
WRITE / my_time(2).
WRITE / my_char.
