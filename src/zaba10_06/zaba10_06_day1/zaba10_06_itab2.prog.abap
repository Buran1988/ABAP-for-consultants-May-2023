*&---------------------------------------------------------------------*
*& Report ZABA10_06_ITAB2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_itab2.

DATA my_itab TYPE TABLE OF sflight.

*my_itab = VALUE #( ( carrid)

SELECT * FROM sflight INTO TABLE my_itab.
DATA wa_line LIKE LINE OF my_itab.
LOOP AT my_itab INTO wa_line.
  WRITE wa_line-carrid.
ENDLOOP.

*cl_demo_output=>display( wa-line ).
*   EXPORTING
*     data = wa_line_with_min_perc
*     name = 'Рейс'  ).
