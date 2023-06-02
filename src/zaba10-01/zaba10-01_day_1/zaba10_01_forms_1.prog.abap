*&---------------------------------------------------------------------*
*& Report ZABA10_01_FORMS_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_FORMS_1.

DATA: lt_sflight TYPE TABLE OF sflight,
      wa         TYPE sflight,
      lt_s TYPE TABLE OF sflight.

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

PERFORM z_calc(zaba10_01_forms_1)
  USING lt_sflight
  CHANGING lt_s.


INCLUDE za10_01_forms_1_f01.
