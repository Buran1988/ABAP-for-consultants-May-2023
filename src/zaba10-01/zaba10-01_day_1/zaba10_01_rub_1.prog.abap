*&---------------------------------------------------------------------*
*& Report ZABA10_01_RUB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_rub_1.

PARAMETERS: p_amn TYPE i,
            p_cur TYPE sy-waers.

DATA: word TYPE spell.

CALL FUNCTION 'SPELL_AMOUNT'
  EXPORTING
    amount    = p_amn
    currency  = p_cur
    filler    = ' '
    language  = sy-langu
  IMPORTING
    in_words  = word
  EXCEPTIONS
    not_found = 1
    too_large = 2
    OTHERS    = 3.
IF sy-subrc <> 0.
* Implement suitable error handling here
ENDIF.

WRITE: word-word, word-decword.
