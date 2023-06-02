*&---------------------------------------------------------------------*
*& Report ZABA10_09_HR_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_HR_1.

data engineer TYPE REF TO zcl_aba10_09_employee.

data engineer_2 TYPE REF TO zcl_aba10_09_employee.
data itab TYPE TABLE of ref to zcl_aba10_09_employee.

*create OBJECT engineer.
engineer = new #( ).
engineer_2 = new #( ).
engineer->name = 'Иван'.
engineer->salary = 150.

engineer_2->name = 'Степан'.
engineer->salary = 175.

APPEND engineer to itab.
APPEND engineer_2 to itab.



LOOP at itab  INTO data(lo_employee).
  WRITE: / lo_employee->name, lo_employee->salary.
  ENDLOOP.
