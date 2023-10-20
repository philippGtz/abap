CLASS zcl_08_car DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_08_vehicle. "public class Car extends Vehihcle

  PUBLIC SECTION.
    DATA number_of_seats TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        make            TYPE string
        model           TYPE string
        number_of_seats TYPE i
      RAISING
        zcx_08_inital_parameter.


       methods to_string REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_car IMPLEMENTATION.
  METHOD constructor.

    super->constructor( make = make model = model ).

    me->number_of_seats = number_of_seats.

  ENDMETHOD.

  METHOD to_string.
    string = |Vehicle: { make } { model } Seats: { number_of_seats } |.
  ENDMETHOD.

ENDCLASS.
