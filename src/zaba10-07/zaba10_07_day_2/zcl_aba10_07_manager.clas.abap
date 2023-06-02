CLASS zcl_aba10_07_manager DEFINITION INHERITING FROM zcl_aba10_07_employee
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS write_report REDEFINITION.
    DATA position TYPE string VALUE 'начальник отдела'.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABA10_07_MANAGER IMPLEMENTATION.


  METHOD write_report.
    report = | <--- Имя: { name }. Зарплата: { salary }. Должность: { position } --->|.
  ENDMETHOD.
ENDCLASS.
