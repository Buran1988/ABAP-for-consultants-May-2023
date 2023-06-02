*&---------------------------------------------------------------------*
*& Report ZABA10_06_DATA_TYPES_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_06_DATA_TYPES_1.

data my_var_1 type string.

DATA: my_date TYPE d,
      my_time TYPE t,
      my_var1 type c LENGTH 10,
      my_var2 TYPE i,
      my_var3 type n LENGTH 4,
      my_var4 TYPE p LENGTH 8 DECIMALS 7.

DATA my_char TYPE c LENGTH 8.

*my_struc = VALUE #( seatsmax = 300 seatsocc = 160
*                     percentage = my_flight-seatsocc / my_flight-seatsmax * 100 ).

my_var1 = 'Hello ABAP'.
my_var2 = '12.72'.
my_var3 = 12345557755.
my_var4 = '1.258645'.

my_date = '20230501'.
my_time = '11:11:00'.
my_char = '123456789'.
WRITE my_var_1.
WRITE: / my_time(2),
       / my_date,
       / my_var1,
       / my_var2,
       / my_var3,
       / my_var4.
