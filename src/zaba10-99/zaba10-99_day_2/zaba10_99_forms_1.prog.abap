*&---------------------------------------------------------------------*
*& Report ZABA10_99_FORMS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_FORMS_1.

DATA my_var_1 TYPE f.
DATA my_percentage TYPE f.
DATA resultat TYPE f.

my_var_1 = '104.15'.
my_percentage = '3.05'.

PERFORM do_calc
  USING my_var_1 my_percentage
  CHANGING resultat.


WRITE resultat.

INCLUDE zaba10_99_forms_1_f01.
