*&---------------------------------------------------------------------*
*& Report ZABA10_199_DATA_TYPES1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_199_DATA_TYPES1.

 data: lv_01 type string,
       my_time type t,
       my_date type d,
       my_char type c length 8.

   lv_01 = 'Hello world'.

   write lv_01.

   my_time = '130000'.
  "my_date = sy-datum.
   my_date = '20230501'.

 write / my_time.
 write / my_date.
 write / my_char.
