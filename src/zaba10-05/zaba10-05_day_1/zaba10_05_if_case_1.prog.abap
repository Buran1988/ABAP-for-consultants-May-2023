*&---------------------------------------------------------------------*
*& Report ZABA10_05_IF_CASE_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABA10_05_IF_CASE_1.

PARAMETERS par_a type i.

DATA a type i.

a = par_a.

*if a > 0.
*  write 'Positive' color col_positive.
*  else.
*   write 'Positive' color col_negative.
*  endif.
case a.
 when 3.
    write 'это три' color col_positive.
  when -3.
      write 'это - три' color col_positive.
  when others.
     write 'это другое' color col_positive.
endcase.
