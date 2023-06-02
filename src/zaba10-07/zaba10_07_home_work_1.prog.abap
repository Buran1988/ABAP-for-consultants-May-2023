*&---------------------------------------------------------------------*
*& Report ZABA10_07_HOME_WORK_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_home_work_1.

TYPES my_home(10) TYPE c.

DATA my_number TYPE n.

TYPES my_number2(7) TYPE c.

my_number = 1.

TYPES my_date TYPE d.

TYPES my_time TYPE t.

TYPES: BEGIN OF my_str1,
  home TYPE my_home,
  numb LIKE my_number,
  numb2 TYPE my_number2,
  date TYPE my_date,
  time TYPE my_time,
  END OF my_str1.
