*&---------------------------------------------------------------------*
*& Report ZABA10_05_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_DATA_TYPES_2.

data my_var_1 type string.

data: my_date type d,
      my_time type t.

data my_char type c length 8.
      my_char = '1233333333333333'.

my_var_1 = 'Всем привет'.

my_date = '20230530'.
my_time = '200000'.

write my_var_1.
write my_date.
write my_time(2).
write my_char.
