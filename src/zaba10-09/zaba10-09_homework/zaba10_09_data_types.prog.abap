*&---------------------------------------------------------------------*
*& Report ZABA10_09_DATA_TYPES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_DATA_TYPES.

types: my_typec(10) type c,
       my_typen(7) type n,
       my_typed type d,
       my_typet type t.
data my_typei type i.

types: BEGIN OF my_struct,
  my_typec(10),
  my_typei,
  my_typen(7),
  my_typed,
  my_typet,
  END of my_struct.



types: BEGIN OF SFLIGHT,
         carrid    TYPE	sflight-carrid,
         connid    TYPE	sflight-connid,
         fldate    TYPE	sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF SFLIGHT.
data structsflight type SFLIGHT.


types: BEGIN OF SBOOK,
         carrid    TYPE	sbook-carrid,
         connid    TYPE	sbook-connid,
         fldate    TYPE	sbook-fldate,
         bookid    type sbook-bookid,
         customid  type sbook-customid,
  end of SBOOK.

data structsbook type sbook.
types: BEGIN OF 8_9_struct,
         carrid    TYPE	sflight-carrid,
         connid    TYPE	sflight-connid,
         fldate    TYPE	sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
         bookid    type sbook-bookid,
         customid  type sbook-customid,

  END OF 8_9_struct.

  types: my_typeii Type TABLE OF i,
         my_sflight type table of sflight,
         my_structsflight type TABLE OF SFLIGHT,
         my_structsbook type TABLE OF sbook WITH KEY customid.

data my_c(10) type c.
  my_c = 'Hallo ABAP'.

data my_n(4) type n.
  my_n = 1234.

data my_i type i.
  my_i = 42.

data my_ii type i.
  my_ii = '12,72'.

data my_d type d.
  my_d = '20230501'.

data my_p type p DECIMALS 7.
  my_p = 1234567.

data carrid type s_carr_id.
data CITYTO type spfli-CITYTO.
data fldate type sflight-fldate.
data my_sbook type sbook.

data: BEGIN OF SFLIGHT,
         carrid    TYPE	sflight-carrid,
         connid    TYPE	sflight-connid,
         fldate    TYPE	sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF SFLIGHT.
data: BEGIN OF sbookscustom,
        carrid     TYPE	sbook-carrid,
        connid     TYPE sbook-connid,
        fldate     TYPE sbook-fldate,
        bookid     TYPE sbook-bookid,
        customid   TYPE sbook-customid,
        custtype   TYPE sbook-custtype,
        smoker     TYPE sbook-smoker,
        luggweight TYPE sbook-luggweight,
        wunit      TYPE sbook-wunit,
        invoice    TYPE sbook-invoice,
        class      TYPE sbook-class,
        forcuram   TYPE sbook-forcuram,
        forcurkey  TYPE sbook-forcurkey,
        loccuram   TYPE sbook-loccuram,
        loccurkey  TYPE sbook-loccurkey,
        order_date TYPE sbook-order_date,
        counter    TYPE sbook-counter,
        agencynum  TYPE sbook-agencynum,
        cancelled  TYPE sbook-cancelled,
        reserved   TYPE sbook-reserved,
        passname   TYPE sbook-passname,
        passform   TYPE sbook-passform,
        passbirth  TYPE sbook-passbirth,
        telephone  TYPE scustom-telephone,
      END OF sbookscustom.
data: BEGIN OF SBOOK,
         carrid    TYPE	sbook-carrid,
         connid    TYPE	sbook-connid,
         fldate    TYPE	sbook-fldate,
         bookid    type sbook-bookid,
         customid  type sbook-customid,
  end of SBOOK.

Data my_sbook type TABLE OF SBOOK.
Data my_scarr type TABLE OF SCARR.
Data my_spfli type TABLE OF SPFLI.
Data my_custom type TABLE OF SCARR.
Data telephone type scustom-telephone.

CONSTANTS: my_name(4) type c VALUE 'Олег',
           my_true(1)  TYPE c VALUE 'X',
           my_false(1) TYPE c VALUE '',
           my_pi(7)    TYPE p DECIMALS 5 VALUE '3,14159'.
CONSTANTS: BEGIN OF all_cifrals,
  1(1) type i,
  2(2) type i,
  3(3) type i,
  4(4) type i,
  5(5) type i,
  END OF all_cifrals.

CONSTANTS: BEGIN OF primitives,
  my_c type c VALUE 'qwer',
  my_t type t value '120000',
  my_d type d VALUE '20230601',
  my_i type i VALUE '1234',
  my_n(5) type n VALUE '12345',
  END OF primitives.

  data: one TYPE c,
        two type c,
        three type c,
        result type c.

  one = '2'.
  two = '3'.
  three = '5'.

  result = one + two * three.
 write: one,
 two,
 three,
 result.
