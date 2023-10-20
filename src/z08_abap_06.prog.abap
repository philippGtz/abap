*&---------------------------------------------------------------------*
*& Report z08_abap_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_abap_06.

PARAMETERS c_id1 TYPE s_customer.

DATA customer TYPE z08_customer.



TRY.
    customer = zcl_abap_helper=>get_customer( c_id1 ).
  CATCH zcx_no_customer_found INTO DATA(e).
    MESSAGE e->get_text( ) TYPE 'E'.
ENDTRY.

WRITE |Kundennmmer: { customer-customer_id }|.
WRITE |Name: { customer-name }|.
WRITE |Stadt: { customer-city }|.
WRITE |Land: { customer-country }|.
