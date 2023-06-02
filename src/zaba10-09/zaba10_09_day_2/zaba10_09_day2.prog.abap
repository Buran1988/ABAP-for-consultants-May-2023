*&---------------------------------------------------------------------*
*& Report ZABA10_09_DAY2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_09_day2.

DATA: BEGIN OF sflight,
        carrid    TYPE  sflight-carrid,
        connid    TYPE  sflight-connid,
        fldate    TYPE  sflight-fldate,
        price     TYPE sflight-price,
        currency  TYPE sflight-currency,
        planetype TYPE sflight-planetype,
        seatsmax  TYPE sflight-seatsmax,
        seatsocc  TYPE sflight-seatsocc,
      END OF sflight.

DATA my_sflight TYPE TABLE OF sflight.
SELECT * FROM sflight INTO TABLE my_sflight.

DATA wa_sflight LIKE LINE OF my_sflight.
LOOP AT my_sflight INTO wa_sflight.
  WRITE: / wa_sflight-carrid,
  wa_sflight-connid,
  wa_sflight-fldate,
  wa_sflight-price,
  wa_sflight-currency.
ENDLOOP.
