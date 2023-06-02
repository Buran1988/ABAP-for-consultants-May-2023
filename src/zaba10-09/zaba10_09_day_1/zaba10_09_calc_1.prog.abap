*&---------------------------------------------------------------------*
*& Report ZABA10_09_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_CALC_1.

data my_var_1 type f.
data my_percentage type f.
data resultat type f.

my_var_1 = '104.15'.
my_percentage = 3.
resultat = my_var_1 * my_percentage / 100.

write resultat.
