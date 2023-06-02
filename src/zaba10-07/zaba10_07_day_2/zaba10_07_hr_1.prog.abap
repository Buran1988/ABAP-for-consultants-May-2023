*&---------------------------------------------------------------------*
*& Report ZABA10_07_HR_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_hr_1.


DATA engineer TYPE REF TO zcl_aba10_07_employee.
DATA engineer_2 TYPE REF TO zcl_aba10_07_employee.

DATA manager_1 TYPE REF TO zcl_aba10_07_manager.
Data ex_manager TYPE REF TO zcl_aba10_07_employee.


DATA itab TYPE TABLE OF REF TO zcl_aba10_07_employee.

CREATE OBJECT engineer
EXPORTING
stavka = 1.
.

engineer_2 = NEW #( stavka = 2 ).
manager_1 = NEW #( stavka = 3 ).


engineer->name = 'Иван'.
*engineer->salary = 150.
engineer_2->name = 'Степан'.
*engineer_2->salary = 175.
manager_1->name = 'Вячеслав'.

ex_manager = manager_1.

APPEND engineer TO itab.
APPEND engineer_2 TO itab.
APPEND manager_1 TO itab.
APPEND ex_manager to itab.

LOOP AT itab INTO DATA(lo_employee).
  WRITE: / lo_employee->write_report( ).
ENDLOOP.


*WRITE: / manager_1->write_report( ).
