*&---------------------------------------------------------------------*
*& Report z08_demo_09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_09.

TRY.
    DATA(result) = zcl_08_calculator=>divide( value1 = 5  value2 = 3 ).
  CATCH cx_sy_zerodivide into data(e).
  write / e->get_text( ).
ENDTRY.

WRITE result.
