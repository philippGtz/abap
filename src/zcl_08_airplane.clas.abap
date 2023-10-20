CLASS zcl_08_airplane DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        name       TYPE string
        plane_type TYPE string
      RAISING
        zcx_abap_initial_parameter.


    METHODS to_string
      RETURNING VALUE(string) TYPE string.

    CLASS-DATA number_of_planes TYPE i READ-ONLY.

  PROTECTED SECTION.
    DATA name TYPE string.
    DATA plane_type TYPE string.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_08_airplane IMPLEMENTATION.

  METHOD constructor.
    IF name IS INITIAL.
      RAISE EXCEPTION TYPE zcx_abap_initial_parameter
        EXPORTING
          parameter = 'name'.
    ENDIF.

     IF plane_type IS INITIAL.
      RAISE EXCEPTION TYPE zcx_abap_initial_parameter
        EXPORTING
          parameter = 'plane_type'.
    ENDIF.



    me->name = name.
    me->plane_type = plane_type.
    number_of_planes += 1.
  ENDMETHOD.

  METHOD to_string.
    string = |Airplane: { name } ({ plane_type })|.
  ENDMETHOD.







ENDCLASS.
