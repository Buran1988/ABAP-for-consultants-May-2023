*&---------------------------------------------------------------------*
*& Report ZABA10_06_CALC_AREA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_CALC_AREA.

PARAMETERS pa_rad TYPE p LENGTH 3 DECIMALS 2.

DATA area TYPE f.

call function 'Z_ABA_10_06_CIRCLE'
  EXPORTING
    radius = pa_rad
  IMPORTING
    result = area
    .

WRITE  | Площадь круга радиуса { pa_rad } равна { area } |.
