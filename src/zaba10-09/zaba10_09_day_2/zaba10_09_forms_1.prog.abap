*&---------------------------------------------------------------------*
*& Report ZABA10_09_FORMS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_FORMS_1.

DATA my_var_1 TYPE f.
DATA my_percentage TYPE f.
DATA resultat TYPE f.

my_var_1 = '104.15'.
my_percentage = '3.05'.

resultat = my_var_1 * my_percentage / 100.

WRITE resultat.
