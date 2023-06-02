CLASS zclaba10_manager DEFINITION INHERITING FROM zclaba10_employee
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS write_report REDEFINITION.

    data position type string VALUE 'Начальник отдела'.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLABA10_MANAGER IMPLEMENTATION.


  METHOD write_report.
    report = |<--- Имя: { name }. Зарплата: { salary }. Должность: { position } --->|.
  ENDMETHOD.
ENDCLASS.
