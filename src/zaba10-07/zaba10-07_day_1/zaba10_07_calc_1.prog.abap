*&---------------------------------------------------------------------*
*& Report ZABA10_07_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_calc_1.

DATA my_var_1 TYPE f.
DATA my_percentage TYPE f.
DATA result TYPE f.
*
*my_var_1 = '103.50'.
*my_percentage = 5.
*
*result = my_var_1 * my_percentage / 100.

PERFORM za10_07_calc_1_f01
USING my_var_1 my_percentage
      CHANGING result.

WRITE result.

include za10_07_calc_1_f01.
