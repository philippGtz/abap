CLASS zcl_08_vehicle DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.


    CLASS-DATA number_of_vehicles TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        make  TYPE string
        model TYPE string "public Vehicle(String make, String model)
      RAISING
        zcx_08_inital_parameter.

    METHODS to_string
      RETURNING VALUE(string) TYPE string.

  PROTECTED SECTION.

      DATA make TYPE string.
    DATA model TYPE string.

  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_08_vehicle IMPLEMENTATION.

  METHOD constructor. "this.make = make; this.model = model;
    IF make IS INITIAL.
      RAISE EXCEPTION TYPE zcx_08_inital_parameter
        EXPORTING
          parameter = 'make'.
    ENDIF.

    IF model IS INITIAL.
      RAISE EXCEPTION TYPE zcx_08_inital_parameter
        EXPORTING
          parameter = 'model'.
    ENDIF.





    me->make = make.
    me->model = model.
    number_of_vehicles += 1.
  ENDMETHOD.

  METHOD to_string.
    string = |Vehicle: { make } { model } |.
  ENDMETHOD.

ENDCLASS.
