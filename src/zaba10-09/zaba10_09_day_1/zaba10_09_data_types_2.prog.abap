*&---------------------------------------------------------------------*
*& Report ZABA10_09_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_DATA_TYPES_2.

types my_c_type(8) type c.

data my_var_1 type my_c_type.

data my_var_2 type zaba10_09_global_char.

my_var_1 = 'hallo all'.

my_var_2 = 'Мой элемент'.

write my_var_1.
write / my_var_2.
