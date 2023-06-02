FUNCTION ZABA10_04_CIRCLE_AREA.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(RADIUS) TYPE  F DEFAULT 0
*"  EXPORTING
*"     REFERENCE(AREA) TYPE  F
*"----------------------------------------------------------------------

AREA = '3.14' * RADIUS * RADIUS.



ENDFUNCTION.
