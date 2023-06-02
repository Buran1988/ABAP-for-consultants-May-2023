*&---------------------------------------------------------------------*
*& Report ZABA10_06_CALC1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_CALC1.
DATA my_var_1 TYPE f.
DATA my_percentage TYPE f.
DATA result TYPE f.

my_var_1 = '104.15'.
my_percentage = '4.9'.

result = my_percentage / my_var_1 * 100.

WRITE result.
