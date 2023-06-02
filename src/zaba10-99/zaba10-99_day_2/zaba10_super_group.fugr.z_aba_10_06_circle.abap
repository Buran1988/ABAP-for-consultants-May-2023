FUNCTION Z_ABA_10_06_CIRCLE.
*"----------------------------------------------------------------------
*"*"Локальный интерфейс:
*"  IMPORTING
*"     REFERENCE(RADIUS) TYPE  F DEFAULT 0
*"  EXPORTING
*"     REFERENCE(RESULT) TYPE  F
*"----------------------------------------------------------------------

DATA pi TYPE p LENGTH 8 DECIMALS 2.
pi = '3.14'.
result = pi * radius ** 2.




ENDFUNCTION.
