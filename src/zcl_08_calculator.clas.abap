CLASS zcl_08_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS divide
      IMPORTING
                value1        TYPE z00_decimal
                value2        TYPE z00_decimal
      RETURNING VALUE(result) TYPE z00_decimal
      RAISING   cx_sy_zerodivide.
    "public static double divide (double value1, double value2)
    "throws zerodivideexception{"return value1 / value2 ;"}

    CLASS-METHODS percentage
      IMPORTING
                zAbapDecimal  TYPE z00_decimal
                zBase         TYPE z00_decimal
      RETURNING VALUE(result) TYPE z00_decimal.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_calculator IMPLEMENTATION.
  METHOD divide.
    result = value1 / value2.
  ENDMETHOD.

  METHOD percentage.
    result = zBase * ( zAbapDecimal / 100 ).
  ENDMETHOD.

ENDCLASS.
