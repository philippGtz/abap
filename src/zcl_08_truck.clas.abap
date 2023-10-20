CLASS zcl_08_truck DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_08_vehicle. "public class Car extends Vehihcle

  PUBLIC SECTION.
    data cargo_in_tons type i read-ONLY.

    methods constructor
    IMPORTING
    make type string
    model type string
    cargo_in_tons type i
     RAISING
        zcx_08_inital_parameter.

      methods to_string REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_truck IMPLEMENTATION.
  METHOD constructor.

    super->constructor( make = make model = model ).

    me->cargo_in_tons = cargo_in_tons.

  ENDMETHOD.

    METHOD to_string.
    string = |Vehicle: { make } { model } Weight in tons: { cargo_in_tons } |.
  ENDMETHOD.

ENDCLASS.
