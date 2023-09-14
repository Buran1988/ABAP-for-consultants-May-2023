*&---------------------------------------------------------------------*
*& Report ZABA10_01_CALC_AREA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_calc_area.


PARAMETERS: pa_rad TYPE p LENGTH 6 DECIMALS 2.



DATA: circ_area TYPE f,
      rad       TYPE f.

rad = pa_rad.

CALL FUNCTION 'Z_ABA10_01_CIRCLE_AREA'
  EXPORTING
    rad = rad
  IMPORTING
    res = circ_area.

WRITE |Площадь круга для радиуса { pa_rad } равна { circ_area }. | .

* Всем привет! 14.09.2023
