CLASS zclaba10_employee DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACEs: zifaba10_worker, IF_HRPAD_SEL_EVALUATION.

    DATA name TYPE string .
    DATA family_name TYPE string .
    DATA sex TYPE string .

    METHODS constructor IMPORTING stavka TYPE i .
    METHODS write_report RETURNING VALUE(report) TYPE string.

  PROTECTED SECTION.
    DATA salary TYPE i.

  PRIVATE SECTION.

ENDCLASS.



CLASS ZCLABA10_EMPLOYEE IMPLEMENTATION.


  METHOD constructor.
    CASE stavka.
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


  method IF_HRPAD_SEL_EVALUATION~GET_EVAL.
    wegid = 'Всем привет'.
  endmethod.


  METHOD write_report.
    report = |Имя: { name }. Зарплата: { salary }.|.
  ENDMETHOD.


  method ZIFABA10_WORKER~WRITE_REPORT.
   report = me->write_report( ).
  endmethod.
ENDCLASS.
