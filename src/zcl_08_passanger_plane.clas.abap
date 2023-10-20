CLASS zcl_08_passanger_plane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
    INHERITING FROM zcl_08_airplane.

  PUBLIC SECTION.

  data number_of_seats type i read-ONLY.

    methods constructor
    importing
    name type string
    plane_type type string
    number_of_seats type i
    RAISING
      zcx_abap_initial_parameter.


   methods to_string REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_passanger_plane IMPLEMENTATION.

  METHOD constructor.

    super->constructor( name = name plane_type = plane_type ).

    me->number_of_seats = number_of_seats.

  ENDMETHOD.

  METHOD to_string.
  string = | Airplane: { name } ({ plane_type }) Seats: { number_of_seats }|.

  ENDMETHOD.




ENDCLASS.
