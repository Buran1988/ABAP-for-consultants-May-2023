FUNCTION ZABA10_07_CIRCLE_AREA.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(RADIUS) TYPE  F DEFAULT 0
*"  EXPORTING
*"     REFERENCE(RESULT) TYPE  F
*"----------------------------------------------------------------------


result = '3.14' * radius ** 2.

*result = sqrt( radius ).



ENDFUNCTION.
