*&---------------------------------------------------------------------*
*& Report zaba10_99_cds_view_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zaba10_99_cds_view_2.

SELECT * FROM zsql_view INTO TABLE @DATA(my_itab).

*read TABLE my_itab WITH KEY airpfrom = 'FRA'  INTO data(wa_my_line).

*DATA(wa_my_line) = my_itab[ airpfrom = 'FRA' ].
*
*DATA results TYPE TABLE OF zsql_view.
*DATA results_aggregate TYPE TABLE OF zsql_view.
*
*LOOP AT my_itab INTO DATA(wa_line) GROUP BY ( airpfrom = wa_line-airpfrom    ).
*  APPEND wa_line TO results.
*
*ENDLOOP.
*
*select
*
*LOOP AT results INTO wa_line.
*  DATA(this_airoport) = wa_line.
*  LOOP AT my_itab INTO DATA(wa_line_2).
*    this_airoport-distance = this_airoport-distance + wa_line_2-distance.
*  ENDLOOP.
*  APPEND this_airoport TO results_aggregate.
*ENDLOOP.

SELECT FROM sflight
       FIELDS carrid,
              sum( price ) AS sum_price
*              MAX( price ) AS max_price
       GROUP BY carrid
       INTO TABLE @DATA(result).

cl_demo_output=>display( result ).
