*&---------------------------------------------------------------------*
*& Report ZABA10_99_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_DATA_TYPES_2.

TYPES my_c_type(8) TYPE c.

data my_var_1 TYPE my_c_type.

data my_var_2 TYPE char80. " zaba10_99_global_char.

my_var_2 = 'Мой элемент'.

my_var_1 = 'Hello all!'.

WRITE my_var_1.

WRITE / my_var_2.
