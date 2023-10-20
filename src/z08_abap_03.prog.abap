*&---------------------------------------------------------------------*
*& Report z08_abap_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_abap_03.

TYPES c_op TYPE  c.


PARAMETERS p_num1 TYPE z00_decimal OBLIGATORY.
PARAMETERS c_op TYPE c OBLIGATORY.
PARAMETERS p_num2 TYPE z00_decimal OBLIGATORY.

DATA result TYPE p LENGTH 10 DECIMALS 2.

*if c_op <> '+' or not  '-' or not '/' or not '*'.
*    MESSAGE e000(z08) with sy-uname.
*endif.

AT SELECTION-SCREEN ON c_op.
  IF c_op = '/' AND p_num2 = 0.
    MESSAGE e004(z08) WITH sy-uname.
  ENDIF.


START-OF-SELECTION.
  CASE c_op.
    WHEN '+'.
      result = p_num1 + p_num2.
    WHEN '-'.
      result = p_num1 - p_num2.
    WHEN '/'.
      result = p_num1 / p_num2.
    WHEN '*'.
      result = p_num1 * p_num2.
    WHEN '%'.
      result = zcl_08_calculator=>percentage(
                 zabapdecimal = p_num1
                 zbase        = p_num2
               ).
    WHEN '^'.
      result = zcl_abap_calculator=>calculate_power( base = p_num1 exponent = p_num2 ).
    WHEN OTHERS.
      MESSAGE e005(z08).
  ENDCASE.


  WRITE / |result: { result }|.
