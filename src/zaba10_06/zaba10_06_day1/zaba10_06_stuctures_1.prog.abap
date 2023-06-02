*&---------------------------------------------------------------------*
*& Report ZABA10_06_STUCTURES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_STUCTURES_1.

DATA my_struct TYPE spfli.
DATA my_struct2 TYPE sflight.

*TYPES: BEGIN OF my_struct3,
*         my_var1 TYPE c LENGTH 10,
*         my_var2 TYPE i,
*         my_var3 TYPE n LENGTH 7,
*         my_var4 TYPE d,
*         my_var5 TYPE t,
*       END OF my_struct3.
*
*DATA wa_struct3 TYPE my_struct3.
*DATA wa_sflight TYPE sflight.
*
*wa_struct3-my_var1 = 'Perm'.
*wa_struct3-my_var2 = '300'.
*
*
*cl_demo_output=>display( wa_struct3 ).

*TYPES: BEGIN OF my_sflight,
*         carrid TYPE sflight-carrid,
*         connid TYPE sflight-connid,
*         fldate TYPE sflight-fldate,
*         price TYPE sflight-price,
*         currency TYPE sflight-currency,
*         planetype TYPE sflight-planetype,
*         seatsmax TYPE sflight-seatsmax,
*         seatsocc TYPE sflight-seatsocc,
*       END OF my_sflight.

*DATA wa_sflight TYPE my_sflight.
*cl_demo_output=>display( wa_sflight ).

*TYPES: BEGIN OF my_sbook,
*         carrid TYPE sbook-carrid,
*         connid TYPE sbook-connid,
*         fldate TYPE sbook-fldate,
*         bookid TYPE sbook-bookid,
*         customid TYPE sbook-customid,
*       END OF my_sbook.
*
*DATA wa_sbook TYPE my_sbook.
*cl_demo_output=>display( wa_sbook ).

*TYPES: BEGIN OF my_sfli_book,
*         carrid TYPE sflight-carrid,
*         connid TYPE sflight-connid,
*         fldate TYPE sflight-fldate,
*         price TYPE sflight-price,
*         currency TYPE sflight-currency,
*         planetype TYPE sflight-planetype,
*         seatsmax TYPE sflight-seatsmax,
*         seatsocc TYPE sflight-seatsocc,
*         bookid TYPE sbook-bookid,
*         customid TYPE sbook-customid,
*        END OF my_sfli_book.
*
*DATA wa_sfli_book TYPE my_sfli_book.
*cl_demo_output=>display( wa_sfli_book ).

*DATA my_sbook TYPE sbook.
*cl_demo_output=>display( my_sbook ).

DATA my_sbook TYPE ZABA10_06_STRUC_SFLIGHT.
cl_demo_output=>display( my_sbook ).
