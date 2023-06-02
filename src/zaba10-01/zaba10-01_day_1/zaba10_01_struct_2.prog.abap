*&---------------------------------------------------------------------*
*& Report ZABA10_01_STRUCT_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_struct_2.

TYPES: BEGIN OF st_flight,
         carrid   TYPE s_carr_id,
         connid   TYPE s_conn_id,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc TYPE sflight-seatsocc,
precentage type p decimals 2,
       END OF st_flight.

data: my_flight type st_flight.

my_flight-seatsmax = 300.
my_flight-seatsocc = 188.
my_flight-precentage = my_flight-seatsocc / my_flight-seatsmax * 100.

my_flight = value #( seatsmax = 6000 seatsocc = 234 ).

cl_demo_output=>display( my_flight ).
