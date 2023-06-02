*&---------------------------------------------------------------------*
*& Report ZABA10_06_DATA_TYPES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_DATA_TYPES_2.

TYPES my_c_type(8) TYPE c.
TYPES my_n_type(7) TYPE n.
TYPES my_d_type TYPE d.
TYPES my_t_type TYPE t.

DATA my_var_1 TYPE my_c_type.
DATA my_var_2 TYPE zaba10_06_global_char.
DATA my_var_3 TYPE S_CARR_ID.
DATA my_var_4 TYPE LAND1.
DATA my_var_5 TYPE S_DATE.

CONSTANTS my_name TYPE my_c_type VALUE 'Сергей'.
CONSTANTS my_con_1 TYPE c VALUE 'X'.
CONSTANTS my_con_0 TYPE c VALUE ' '.

my_var_1 = 'Моя переменная'.
my_var_2 = 'Мой элемент'.
my_var_3 = '001'.
my_var_4 = 'RUS'.
my_var_5 = '20230601'.

WRITE: / my_var_1,
       / my_var_2,
       / my_var_3,
       / my_var_4,
       / my_var_5,
       / my_con_1,
       / my_name.
