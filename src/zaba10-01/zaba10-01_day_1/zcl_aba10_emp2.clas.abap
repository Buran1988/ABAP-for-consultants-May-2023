class ZCL_ABA10_EMP2 definition INHERITING FROM ZCL_ABA10_EMP
  public
  final
  create public .

public section.
    METHODS w_rep REDEFINITION.
    data pos TYPE string VALUE 'Нач'.
protected section.
private section.
ENDCLASS.



CLASS ZCL_ABA10_EMP2 IMPLEMENTATION.


    METHOD w_rep.
   report = |- Имя: { Fname }. Зарплата: { zp } - { pos }|.

  ENDMETHOD.
ENDCLASS.
