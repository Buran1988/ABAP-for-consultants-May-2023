*&---------------------------------------------------------------------*
*& Report ZABA10_04_HOMEWORK_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_04_HOMEWORK_1.

* 1.
*TYPES my_var(10) TYPE C.
TYPES my_var TYPE c LENGTH 10.
* 2. Объявить целое число.

DATA counter TYPE I.

* 3. Объявите тип как число с 7 позициями.

*TYPES personal(7) TYPE n. " или DATA personal(7) TYPE p.
TYPES personal TYPE n LENGTH 7.

* 4. Объявите тип даты.

TYPES ddate TYPE d.

* 5. Объявите тип времени.
TYPES ttime TYPE t.

*6. Объявите тип структуры с 5 полями, каждое поле с теми же типами из упражнений с 1 по 5.
DATA: BEGIN OF st_1,
      first TYPE my_var,
      cnt LIKE counter,
      prsn TYPE personal,
      f_date TYPE ddate,
      f_time TYPE ttime,
  END OF st_1.


* 7. Объявите тип, используя глобальную структуру SFLIGHT.
TYPES my_flight TYPE SFLIGHT. "DATA my_flight LIKE SFLIGHT.


*8. Объявите структурный тип со следующими компонентами глобальной структуры SFLIGHT:CARRID,

TYPES: BEGIN OF from_sflight,
      carrid type sflight-carrid,
      CONNID type sflight-CONNID,
      from_FLDATE type sflight-FLDATE,
      from_PRICE type sflight-PRICE,
      END OF from_sflight.

* 9. Объявите структурный тип со следующими компонентами глобальной структуры SBOOK: CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.
TYPES: BEGIN OF new_book,
  carrid type sbook-carrid,
  connid type sbook-connid,
  fldate type sbook-fldate,
  bookid type sbook-bookid,
  END OF new_book.


*10. Объявите структуру, содержащую все поля, упомянутые в упражнениях 8 и 9. Проверьте ее с помощью отладчика ABAP.
TYPES: BEGIN OF some_components_sflight_2,
carrid TYPE sflight-carrid,
connid TYPE sflight-connid,
fldate TYPE sflight-fldate,
price TYPE sflight-price,
currency TYPE sflight-currency,
planetype TYPE sflight-planetype,
seatsmax TYPE sflight-seatsmax,
seatsocc TYPE sflight-seatsocc,
END OF some_components_sflight_2.
TYPES: BEGIN OF flight_booking,
carrid TYPE sbook-carrid ,
connid TYPE sbook-connid ,
fldate TYPE sbook-fldate ,
bookid TYPE sbook-bookid ,
customid TYPE sbook-customid ,
END OF flight_booking.

TYPES: BEGIN OF sflight_sbook.
INCLUDE TYPE some_components_sflight_2.
INCLUDE TYPE flight_booking AS book RENAMING WITH SUFFIX _book.
TYPES END OF sflight_sbook.
START-OF-SELECTION. " F8 To Execute
DATA one_record TYPE sflight_sbook.


* Объявить табличный тип целых чисел.
TYPES table_type_with_number TYPE TABLE OF i.
DATA odd_numbers TYPE table_type_with_number.
DATA even_numbers TYPE table_type_with_number.

APPEND: 1 TO odd_numbers,
3 TO odd_numbers,
5 TO odd_numbers,
7 TO odd_numbers,
9 TO odd_numbers.
APPEND: 2 TO even_numbers,
4 TO even_numbers,
6 TO even_numbers,
8 TO even_numbers,
10 TO even_numbers.

*Объявить табличный тип со всеми компонентами глобальной структуры SFLIGHT.

TYPES table_type_sflight TYPE TABLE OF sflight.
DATA sflight_work_area TYPE LINE OF table_type_sflight.
DATA table_sflight TYPE table_type_sflight.

sflight_work_area-CARRID = 'AA'.
sflight_work_area-CONNID = '0017'.
sflight_work_area-FLDATE = 20131225. "Christmas
sflight_work_area-PRICE = '500.12'.
APPEND sflight_work_area TO table_sflight.
sflight_work_area-CARRID = 'AA'.
sflight_work_area-CONNID = '064'.
sflight_work_area-FLDATE = 20131225.
sflight_work_area-PRICE = '500.12'.
APPEND sflight_work_area TO table_sflight.

*Объявить табличный тип со всеми компонентами глобальной структуры SFLIGHT.
TYPES first TYPE TABLE of sflight.

* Объявите переменную типа character с 10 позициями и присвойте ей «Hello ABAP» в качестве начального значения.

DATA one TYPE c LENGTH 10 VALUE 'Hello ABAP'.

*Объявить переменную числового типа с 4 позициями и начальным значением 1234.

DATA var TYPE f Value 1234.

* Объявить переменную типа integer с начальным значением 42.

DATA var1 TYPE i VALUE 42.
DATA round_number TYPE i VALUE '12.72'.
WRITE round_number.

*Объявите переменную типа date и назначьте ей дату 1 мая.

DATA date_of_solidarnosti TYPE d VALUE '20230501'.
WRITE date_of_solidarnosti.
* Объявите упакованную числовую переменную с 7 знаками после запятой.

DATA two TYPE p LENGTH 10 DECIMALS 7.
two = '123456789.987654321'.
WRITE two.
