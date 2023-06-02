*&---------------------------------------------------------------------*
*& Report ZABA10_07_STRUCTURES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_07_structures_1.

DATA my_struct TYPE spfli.

my_struct-cityfrom = 'Moscow'.
my_struct-carrid = '123'.



cl_demo_output=>display( my_struct ).
