*&---------------------------------------------------------------------*
*& Report ZABA10_99_HR_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_99_HR_2.

data engineer TYPE REF TO zclaba10_employee.
data engineer_2 TYPE REF TO zclaba10_employee.

data manager_1 TYPE REF TO zclaba10_manager.

data itab TYPE TABLE of REF TO zifaba10_worker.

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
engineer_2->name = 'Степан'.

APPEND engineer TO itab.
APPEND engineer_2 TO itab.
APPEND manager_1 TO itab.

data li_worker type REF TO zifaba10_worker.

LOOP AT itab INTO li_worker.
  WRITE: / li_worker->write_report( ).

ENDLOOP.
