*&---------------------------------------------------------------------*
*& Report ZABA10_09_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_DATA_TYPES_1.

DATA my_var_1 type string.
DATA: my_date Type d,
      my_time type t.

data my_char type c length 8.
my_char = '1234567891011'.

my_var_1 = 'Hello world!'.

my_date = '20230501'.
my_time = '130000'.


write my_var_1.
write / my_date.
write / my_time(2).
write / my_char.
