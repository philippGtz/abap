CLASS zcl_08_cargo_plane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_08_airplane.

  PUBLIC SECTION.

    data cargo_in_tons type i read-ONLY.

    methods constructor
    importing
    name type string
    plane_type type string
    cargo_in_tons type i
        raising
        zcx_abap_initial_parameter.

   methods to_string REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_cargo_plane IMPLEMENTATION.
  METHOD constructor.

    super->constructor( name = name plane_type = plane_type ).

    me->cargo_in_tons = cargo_in_tons.

  ENDMETHOD.

  METHOD to_string.
  string = | Airplane: { name } ({ plane_type }) tons:{ cargo_in_tons }|.

  ENDMETHOD.

ENDCLASS.
