*&---------------------------------------------------------------------*
*& Report ZABA10_05_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_CALC_1.

data my_var_1 type f.
data my_percentage type f.
data resuitat type f.

my_var_1 = '100.15'.
my_percentage = '3.05'.
resuitat = my_var_1 * my_percentage / 100.

write resuitat.
