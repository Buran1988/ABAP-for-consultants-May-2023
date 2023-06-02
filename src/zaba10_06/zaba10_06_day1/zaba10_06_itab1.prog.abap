*&---------------------------------------------------------------------*
*& Report ZABA10_06_ITAB1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_itab1.

TYPES: BEGIN OF st_flightinfo,
         carrid TYPE i,
         connid TYPE i,

END OF st_flightinfo.

*DATA my_itab TYPE TABLE OF st_flightinfo.
*cl_demo_output=>display( my_itab ).

*DATA my_itab TYPE ZABA10_06_TAB_SBOOK.
*cl_demo_output=>display( my_itab ).

*DATA my_itab TYPE TABLE OF sflight.
*
**my_itab = VALUE #( ( carrid)
*
*SELECT * FROM sflight INTO TABLE my_itab.
*DATA min_occ_percentage TYPE f.
*DATA wa_line like LINE OF my_itab.
*DATA wa_line_with_min_perc LIKE LINE OF my_itab.
*LOOP AT my_itab INTO wa_line.
*  data(this_occ) = wa_line-seatsocc / wa_line-seatsmax * 100.
*  IF this_occ < min_occ_percentage.
*   min_occ_percentage = this_occ.
*  ENDIF.
*ENDLOOP.
*
*cl_demo_output=>display(
*   EXPORTING
*     data = wa_line_with_min_perc
*     name = 'Рейс'  ).

DATA my_scarr TYPE TABLE OF ZABA10_06_STRUC_SCARR.
cl_demo_output=>display( my_scarr ).
