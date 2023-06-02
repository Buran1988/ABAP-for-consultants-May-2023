*&---------------------------------------------------------------------*
*& Report ZABA10_01_HOMEWORK_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_01_homework_01.

DATA: lv_s  TYPE c LENGTH 10,
      lv_i  TYPE i,
      lv_i7 TYPE n LENGTH 7,
      lv_d  TYPE d,
      lv_t  TYPE t.

TYPES: BEGIN OF ls_1_5,
         lv_s  TYPE c LENGTH 10,
         lv_i  TYPE i,
         lv_i7 TYPE n LENGTH 7,
         lv_d  TYPE d,
         lv_t  TYPE t,
       END OF ls_1_5.

DATA: ls_sflight TYPE sflight.

TYPES: BEGIN OF ts_sflights,
         carrid    TYPE	s_carr_id,
         connid    TYPE	s_conn_id,
         fldate    TYPE	s_date,
         price     TYPE s_price,
         currency  TYPE s_currcode,
         planetype TYPE s_planetye,
         seatsmax  TYPE s_seatsmax,
         seatsocc  TYPE s_seatsocc,
       END OF ts_sflights,

       BEGIN OF ts_sbook,
         carrid   TYPE  s_carr_id,
         connid   TYPE  s_conn_id,
         fldate   TYPE  s_date,
         bookid   TYPE  s_book_id,
         customid TYPE  s_customer,
       END OF ts_sbook,

       BEGIN OF ts_flightbook,
         carrid    TYPE	s_carr_id,
         connid    TYPE	s_conn_id,
         fldate    TYPE	s_date,
         bookid    TYPE  s_book_id,
         customid  TYPE  s_customer,
         price     TYPE s_price,
         currency  TYPE s_currcode,
         planetype TYPE s_planetye,
         seatsmax  TYPE s_seatsmax,
         seatsocc  TYPE s_seatsocc,
       END OF ts_flightbook.

DATA: lt_11       TYPE TABLE OF i,
      lt_sflight  TYPE TABLE OF Sflight,
      lt_sflight8 TYPE TABLE OF ts_sflights,
      lt_sbooks   TYPE TABLE OF ts_sbook WITH KEY customid.

DATA: lv_c8      TYPE c LENGTH 10 VALUE 'Hello ABAP',
      lv_n4      TYPE n LENGTH 4 VALUE 1234,
      lv_i42     TYPE i VALUE 42,
      lv_i1272   TYPE i VALUE '12.72',
      lv_date    TYPE d VALUE '20230501',
      lv_p       TYPE p DECIMALS 7,
      lv_scarrid TYPE s_carr_id,
      lv_connid  TYPE spfli-connid,
      lv_fldate  TYPE sflight-fldate,
      ls_sbook1  TYPE sbook,

      BEGIN OF ls_sflights, "25
        carrid    TYPE sflight-carrid,
        connid    TYPE sflight-connid,
        fldate    TYPE sflight-fldate,
        price     TYPE sflight-price,
        currency  TYPE sflight-currency,
        planetype TYPE sflight-planetype,
        seatsmax  TYPE sflight-seatsmax,
        seatsocc  TYPE sflight-seatsocc,
      END OF ls_sflights,

      BEGIN OF ls_customsbook, "26
        carrid     TYPE	sbook-carrid,
        connid     TYPE   sbook-connid,
        fldate     TYPE   sbook-fldate,
        bookid     TYPE   sbook-bookid,
        customid   TYPE  sbook-customid,
        custtype   TYPE  sbook-custtype,
        smoker     TYPE  sbook-smoker,
        luggweight TYPE  sbook-luggweight,
        wunit      TYPE  sbook-wunit,
        invoice    TYPE    sbook-invoice,
        class      TYPE  sbook-class,
        forcuram   TYPE  sbook-forcuram,
        forcurkey  TYPE  sbook-forcurkey,
        loccuram   TYPE  sbook-loccuram,
        loccurkey  TYPE  sbook-loccurkey,
        order_date TYPE  sbook-order_date,
        counter    TYPE  sbook-counter,
        agencynum  TYPE  sbook-agencynum,
        cancelled  TYPE  sbook-cancelled,
        reserved   TYPE  sbook-reserved,
        passname   TYPE  sbook-passname,
        passform   TYPE  sbook-passform,
        passbirth  TYPE  sbook-passbirth,
        telephone  TYPE scustom-telephone,
      END OF ls_customsbook,

      lt_scarr TYPE TABLE OF scarr, "28
      lt_sofli TYPE TABLE OF spfli. "29

CONSTANTS: c_var(9)   TYPE c VALUE 'Александр', "31
           c_true(1)  TYPE c VALUE 'X',
           c_false(1) TYPE c VALUE '',
           c_pi(6)    TYPE p DECIMALS 5 VALUE '3.14159'. "33

"40
DATA: lv_calc1 TYPE i.

lv_calc1 = 2 + 3 * 5.

WRITE: 'Ex.40:', lv_calc1.

"41
DATA: lv_v1 TYPE i VALUE 4,
      lv_v2 TYPE i VALUE 14,
      lv_i1 TYPE i,
      lv_i2 TYPE i.

lv_i1 = lv_v1 * lv_v2 - lv_v1 + lv_v2 ** lv_v1 / lv_v2.
lv_i2 = lv_i1 DIV lv_v1.

WRITE: / 'Ex.41:',
      / lv_i1,
      / lv_i2.

"42
*PARAMETERS: p_1 TYPE i,
*            p_2 TYPE i.
DATA:
            lv_cl TYPE i.

*lv_cl = p_1 + p_2 * p_2 / p_1 - p_2 ** p_1.
WRITE: / 'Ex.42:',
       lv_cl.

"43
DATA: lv_str1(20) TYPE c VALUE 'Чижик',
      lv_str2(10) TYPE c VALUE 'Кот',
      lv_str(40)  TYPE c.

lv_str = lv_str1 && lv_str2.

WRITE: / 'Ex.43:',
         lv_str.


"44
DATA: lv_mnth TYPE n VALUE 6.
CONCATENATE lv_str1 lv_str2 lv_mnth into lv_str SEPARATED BY '-'.

WRITE: / 'Ex.44:',
         lv_str.
