*&---------------------------------------------------------------------*
*& Report ZABA10_05_ZACHET
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_05_zachet.

TYPES: BEGIN OF sflight,
         carrid    TYPE	sflight-carrid,
         connid    TYPE	sflight-connid,
         fldate    TYPE	sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF sflight.

DATA my_sflight1 TYPE TABLE OF sflight.
SELECT * FROM sflight INTO TABLE my_sflight1.

DATA wa_sflight1 LIKE LINE OF my_sflight1.

LOOP AT my_sflight1 INTO wa_sflight1.

  WRITE: / wa_sflight1-carrid,
  wa_sflight1-fldate,
  wa_sflight1-connid.
ENDLOOP
