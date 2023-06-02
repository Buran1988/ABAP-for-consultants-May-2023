*&---------------------------------------------------------------------*
*& Report ZABA10_04_ITAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_ITAB.

DATA MY_ITAB TYPE TABLE OF SFLIGHT.

SELECT * FROM SFLIGHT INTO TABLE MY_ITAB.

  cl_demo_output=>display( my_itab ).
