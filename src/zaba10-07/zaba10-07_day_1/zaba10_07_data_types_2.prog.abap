*&---------------------------------------------------------------------*
*& Report ZABA10_07_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_data_types_2.

TYPES my_c_type(8) TYPE c.

DATA my_var_1 TYPE my_c_type.

DATA my_var_2 TYPE zaba10_07_global_char.

my_var_2 = 'My element'.

my_var_1 = 'hello world'.

WRITE: my_var_1,
/ my_var_2.
