CLASS zcl_aba10_emp DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_aba10_01_wrk.

    DATA name TYPE string .
    DATA fname TYPE string .
    DATA sex TYPE string .
*    DATA zp TYPE i .

    METHODS constructor IMPORTING stavka TYPE i.
    METHODS w_rep RETURNING VALUE(report) TYPE string.

  PROTECTED SECTION.
    DATA:      zp    TYPE i.
  PRIVATE SECTION.


ENDCLASS.



CLASS ZCL_ABA10_EMP IMPLEMENTATION.


  METHOD constructor.
    CASE stavka.
      WHEN 1.
        zp = 100.
      WHEN 2.
        zp = 200.
      WHEN OTHERS.
        zp = 50.
    ENDCASE.

  ENDMETHOD.


  METHOD w_rep.
    report = |Имя: { Fname }. Зарплата: { zp } |.

  ENDMETHOD.


  method ZIF_ABA10_01_WRK~W_REP.
*    report =
  endmethod.
ENDCLASS.
