*&---------------------------------------------------------------------*
*& Report ZABA10_05_HW
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_05_hw.

TYPES simvol(10) TYPE c.
TYPES cel TYPE i.
TYPES chisl(7) TYPE n.
TYPES dataa TYPE d.
TYPES vrem TYPE t.

TYPES: BEGIN OF structura,
         simvol(10),
         cel,
         chisl(7),
         dataa,
         vrem,
       END OF structura.

TYPES my_flight TYPE sflight.

TYPES: BEGIN OF strukt_sflight,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF strukt_sflight.

DATA hello(10) TYPE c.
hello = 'Hello ABAP'.
write hello.
