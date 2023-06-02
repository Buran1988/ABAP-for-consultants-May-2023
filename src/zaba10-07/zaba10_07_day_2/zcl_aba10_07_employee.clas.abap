CLASS zcl_aba10_07_employee DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

INTERFACES zifaba10_07_worker.

    DATA name TYPE string .
    DATA family_name TYPE string .
    DATA sex TYPE string .

    METHODS constructor IMPORTING stavka TYPE i.
    METHODS write_report RETURNING VALUE(report) TYPE string.


  PROTECTED SECTION.
    DATA salary TYPE i.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_ABA10_07_EMPLOYEE IMPLEMENTATION.


  METHOD constructor .
    CASE stavka .
      WHEN 1.
        salary = 100.
      WHEN 2.
        salary = 150.
      WHEN 3.
        salary = 175.
      WHEN OTHERS.
        salary = 30.
    ENDCASE.
  ENDMETHOD.


  METHOD write_report.
    report = | Имя: { name }. Зарплата: { salary }.|.
  ENDMETHOD.


  method ZIFABA10_07_WORKER~WRITE_REPORT.

  REPORT = me->write_report( ).





  endmethod.
ENDCLASS.
