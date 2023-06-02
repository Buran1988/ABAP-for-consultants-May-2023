*&---------------------------------------------------------------------*
*& Report ZABA10_07_HR_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_07_HR_2.

DATA engineer TYPE REF TO zcl_aba10_07_employee.
DATA engineer_2 TYPE REF TO zcl_aba10_07_employee.

DATA manager_1 TYPE REF TO zcl_aba10_07_manager.
Data ex_manager TYPE REF TO zcl_aba10_07_employee.


DATA itab TYPE TABLE OF REF TO zifaba10_07_worker.

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

APPEND engineer TO itab.
APPEND engineer_2 TO itab.
APPEND manager_1 TO itab.

DATA li_worker TYPE REF TO zifaba10_07_worker.




LOOP AT itab INTO li_worker.
  WRITE: / li_worker->write_report( ).
ENDLOOP.
