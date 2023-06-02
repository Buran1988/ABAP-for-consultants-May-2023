*&---------------------------------------------------------------------*
*& Report ZABA10_01_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_itab_1.
DATA itab TYPE TABLE OF sflight.

PARAMETERS p_carrid TYPE sflight-carrid.

SELECT * FROM sflight INTO TABLE itab WHERE carrid = p_carrid.

DATA max_occ_per TYPE f.

DATA wa_line TYPE sflight.
DATA wa_line_maxper TYPE sflight.
DATA this_occ TYPE f.

LOOP AT itab INTO wa_line.

  this_occ = wa_line-seatsocc / wa_line-seatsmax * 100.
  IF this_occ > max_occ_per.

    max_occ_per = this_occ.
    wa_line_maxper = wa_line.

  ENDIF.

ENDLOOP.


cl_demo_output=>display( itab ).

*cl_demo_output=>display(
*   EXPORTING
*data = wa_line
*name = 'Рейс макс.' ).
