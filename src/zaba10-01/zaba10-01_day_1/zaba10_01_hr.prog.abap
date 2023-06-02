*&---------------------------------------------------------------------*
*& Report ZABA10_01_HR
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_HR.

data: eng TYPE REF TO zcl_aba10_emp,
      eng2 TYPE REF TO zcl_aba10_emp,
      eng3 TYPE REF TO zcl_aba10_emp2.

data: ex TYPE REF TO zcl_aba10_emp.

data: itab TYPE TABLE of REF TO zcl_aba10_emp.

create object eng
 EXPORTING
   stavka = '1' .


*eng = new #( stavka ).
eng2 = new #( stavka = 2 ).

eng->fname = 'Петя'.
*eng->zp = '300'.

eng2->fname = 'Вася'.
*eng2->zp = '200'.

eng3 = new #( stavka = 1 ).
eng3->fname = 'Вася2'.

ex ?= eng3.

APPEND eng to itab.
APPEND eng2 to itab.
APPEND eng3 to itab.
APPEND ex to itab.



loop at itab into data(lo_emp).

*  WRITE: / lo_emp->fname, lo_emp->zp.
 WRITE / lo_emp->w_rep( ).


endloop.
