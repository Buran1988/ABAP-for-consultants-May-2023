*&---------------------------------------------------------------------*
*& Report ZABA10_05_ITAB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_ITAB_1.

DATA my_itab TYPE TABLE OF sflight.




SELECT * FROM sflight INTO TABLE my_itab.

DATA max_occ_percenage TYPE f.

DATA wa_line LIKE LINE OF my_itab.
DATA wa_line_with_max_percent LIKE LINE OF my_itab.
DATA this_occ type f.
