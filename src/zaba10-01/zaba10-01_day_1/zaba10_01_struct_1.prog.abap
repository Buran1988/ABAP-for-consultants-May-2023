*&---------------------------------------------------------------------*
*& Report ZABA10_01_STRUCT_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_01_STRUCT_1.
  data my_struct type spfli.

my_struct-cityfrom = 'SPB'.
my_struct-CITYTO = 'MSK'.

cl_demo_output=>display( my_struct ).
