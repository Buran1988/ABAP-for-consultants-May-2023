FUNCTION Z_ABA10_09_CIRCLE_AREA.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(RADIUS) TYPE  F DEFAULT 0
*"  EXPORTING
*"     REFERENCE(RESULTAT) TYPE  F
*"----------------------------------------------------------------------

resultat = '3,14' * radius ** 2.



ENDFUNCTION.
