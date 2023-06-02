*&---------------------------------------------------------------------*
*& Report ZABA10_05_STRUCTURA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_STRUCTURA.
TYPES: BEGIN OF st_flightinfo,
carrid type s_carr_id,
connid type s_conn_id,
  end of st_flightinfo.

  DATA my_flight TYPE st_flightinfo.
