*&---------------------------------------------------------------------*
*& Report ZABA10_07_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_itab_1.

DATA my_itab TYPE TABLE OF sflight.


*my_itab = VALUE #( ( carrid = 'AER'  )
*  ).

SELECT * FROM sflight INTO TABLE my_itab.

DATA max_occ_percentage TYPE f.

DATA wa_line LIKE LINE OF my_itab.
DATA wa_line_with_max_percent LIKE LINE OF my_itab.
DATA this_occ TYPE f.


LOOP AT my_itab INTO wa_line.

  this_occ = wa_line-seatsocc / wa_line-seatsmax * 100.


  IF this_occ > max_occ_percentage.
    max_occ_percentage = this_occ.
    wa_line_with_max_percent = wa_line.
  ENDIF.


ENDLOOP.




cl_demo_output=>display(
EXPORTING
  data = wa_line_with_max_percent
  name = 'Макс загрузка' ).
