*&---------------------------------------------------------------------*
*& Report ZABA10_09_STRUCTURES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_09_STRUCTURES_1.

data my_struct type spfli.

my_struct-cityfrom = 'Moscow'.
my_struct-cityto = 'Sochi'.

cl_demo_output=>display( my_struct ).
