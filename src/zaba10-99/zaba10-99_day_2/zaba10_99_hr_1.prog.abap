*&---------------------------------------------------------------------*
*& Report ZABA10_99_HR_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_HR_1.


data engineer TYPE REF TO zclaba10_employee.
data engineer_2 TYPE REF TO zclaba10_employee.

data ex_manager TYPE REF TO zclaba10_employee.

data manager_1 TYPE REF TO zclaba10_manager.

data itab TYPE TABLE of REF TO zclaba10_employee.

*1) Create object
create OBJECT engineer
  EXPORTING
    stavka = 1.
  .

*2) NEW

engineer_2 = new #( stavka = 2 ).

manager_1 = new #( stavka = 3 ).
manager_1->name = 'Вячеслав'.

engineer->name = 'Иван'.
*engineer->salary = 150.

engineer_2->name = 'Степан'.
*engineer_2->salary = 175.



ex_manager ?= manager_1.



APPEND engineer TO itab.
APPEND engineer_2 TO itab.
APPEND manager_1 TO itab.
APPEND ex_manager TO itab.

*y=f(x)

LOOP AT itab INTO data(lo_employee).
  WRITE: / lo_employee->write_report( ).

ENDLOOP.

*WRITE: / manager_1->write_report( ).
