*&---------------------------------------------------------------------*
*& Report ZABA10_07_DAY2_ZACH
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_day2_zach.


DATA: BEGIN OF sflight,
        carrid    TYPE sflight-carrid,
        connid    TYPE sflight-connid,
        fldate    TYPE sflight-fldate,
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
  wa_sflight-currency,
  wa_sflight-price.


ENDLOOP.
