*&---------------------------------------------------------------------*
*& Report ZABA10_02_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT ZABA10_02_DATA_TYPES_1.

types my_type_c(8) type c.
data my_var_1 type string.
data: my_data_1 type d,
      my_time_1 type t,
      my_var_2 type my_type_c.

my_var_2 = 'ASDFGHJKL'.
my_data_1 = '20230531'.
my_time_1 = '130000'.

my_var_1 = 'Hi!'.
write my_var_1.
write / my_data_1.
write / my_time_1.
write my_var_2.
