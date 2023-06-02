*&---------------------------------------------------------------------*
*& Report ZABA10_01_SFLIGHT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_sflight_1.
DATA: lt_sflight TYPE TABLE OF sflight,
      wa         TYPE sflight.

SELECT * FROM sflight INTO TABLE lt_sflight.

LOOP AT lt_sflight INTO wa.

  WRITE: / wa-carrid COLOR COL_HEADING,
   wa-connid COLOR COL_KEY,
   wa-currency,
   wa-fldate,
   wa-paymentsum,
   wa-planetype,
   wa-price,
   wa-seatsmax,
   wa-seatsocc.

ENDLOOP.
