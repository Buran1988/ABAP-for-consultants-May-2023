*&---------------------------------------------------------------------*
*& Report ZABA10_99_CALC_AREA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_calc_area.

PARAMETERS pa_rad TYPE p LENGTH 5 DECIMALS 2.
DATA rad TYPE f.
rad = pa_rad.

DATA circ_area TYPE f.


CALL FUNCTION 'ZABA10_99_CIRCLE_AREA'
  EXPORTING
    radius   = rad                " Радиус
  IMPORTING
    resultat = circ_area.               " Результат



WRITE |Площадь круга для радиуса { pa_rad } равна { circ_area }. |.
