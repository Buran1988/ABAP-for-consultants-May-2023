*&---------------------------------------------------------------------*
*& Report ZABA10_07_CALC_AREA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_calc_area.

PARAMETERS pa_rad TYPE p LENGTH 4 DECIMALS 2.

DATA rad TYPE f.

rad = pa_rad.

DATA circ_area TYPE f.


CALL FUNCTION 'ZABA10_07_CIRCLE_AREA'
  EXPORTING
    radius = rad "Radius
  IMPORTING
    result = circ_area.  "result

CALL FUNCTION 'SPELL_AMOUNT'
 EXPORTING
   AMOUNT          = circ_area
   CURRENCY        = ' '
   FILLER          = ' '
   LANGUAGE        = SY-LANGU
 IMPORTING
   IN_WORDS        =
 EXCEPTIONS
   NOT_FOUND       = 1
   TOO_LARGE       = 2
   OTHERS          = 3
          .
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.


WRITE | Площадь круга для радиуса { pa_rad } равна (circ_area). |.
