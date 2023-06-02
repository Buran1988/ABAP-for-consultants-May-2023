*&---------------------------------------------------------------------*
*& Report ZABA10_09_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_ITAB_1.

data my_itab type table of sflight.

*my_itab = value #( ( carrid = 'AER' )
*                   ).
select * from sflight into table my_itab.

data max_occ_persentage type f.

data wa_line like line of my_itab.
data wa_line_with_max_percent like line of my_itab.
data this_occ type f.

LOOP at my_itab into wa_line.

this_occ = wa_line-seatsocc / wa_line-seatsmax * 100.

IF this_occ > max_occ_persentage.
  max_occ_persentage = this_occ.
  wa_line_with_max_percent = wa_line.

ENDIF.

ENDLOOP.

cl_demo_output=>display(
  EXPORTING
    data    = wa_line_with_max_percent
    name    = 'Рейс с макс. загрузкой'
*    exclude =
*    include =
).
