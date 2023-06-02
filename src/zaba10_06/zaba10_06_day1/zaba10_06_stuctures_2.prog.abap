*&---------------------------------------------------------------------*
*& Report ZABA10_06_STUCTURES_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_06_stuctures_2.

TYPES: BEGIN OF st_flightinfo,
         carrid        TYPE s_carr_id,
         connid        TYPE s_conn_id,
         fldate        TYPE s_date,
         seatsmax      TYPE sflight-seatsmax,
         seatsocc      TYPE sflight-seatsocc,
         percentage(3) TYPE p DECIMALS 2,

END OF st_flightinfo.

DATA my_flight TYPE st_flightinfo.

*my_flight-seatsmax = 300.
*my_flight-seatsocc = 187.
*my_flight-percentage = my_flight-seatsocc / my_flight-seatsmax * 100.

my_flight = VALUE #( seatsmax = 300 seatsocc = 160
                     percentage = my_flight-seatsocc / my_flight-seatsmax * 100 ).


cl_demo_output=>display( my_flight ).
