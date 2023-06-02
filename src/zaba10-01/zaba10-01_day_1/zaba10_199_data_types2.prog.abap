*&---------------------------------------------------------------------*
*& Report ZABA10_199_DATA_TYPES2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_199_DATA_TYPES2.

  Types: my_c_types(8) type c.

  data: lv_01 type my_c_types,
        lv_02 type ZABA10_01_GLOBAL_CHAR.

  lv_01 = 'Massive data'.
  lv_02 = 'New Element'.

  write lv_01.
  write / lv_02.
