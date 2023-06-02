*&---------------------------------------------------------------------*
*& Report ZABA10_07_RUB_CALC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_rub_calc_1.

PARAMETERS: p_rub  TYPE i,
            p_curr TYPE sy-waers.

DATA: word TYPE spell.


CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = p_rub
    currency  = p_curr
    filler    = ' '
    language  = sy-langu
  IMPORTING
    in_words  = word
  EXCEPTIONS
    not_found = 1
    too_large = 2
    OTHERS    = 3.
IF sy-subrc <> 0.
  "Implement suitable error handling here
ENDIF.

WRITE: word-word, word-decword.
