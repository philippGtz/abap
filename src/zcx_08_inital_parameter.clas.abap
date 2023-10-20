CLASS zcx_08_inital_parameter DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg .
    INTERFACES if_t100_message .

    DATA parameter TYPE string.

    CONSTANTS:
      BEGIN OF zcx_08_inital_parameter,
        msgid TYPE symsgid VALUE 'Z08',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE 'PARAMETER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF zcx_08_inital_parameter.



    METHODS constructor
      IMPORTING
        textid    LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        parameter TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_08_inital_parameter IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( previous = previous ).

    if_t100_message~t100key = zcx_08_inital_parameter=>zcx_08_inital_parameter.
    me->parameter = parameter.
  ENDMETHOD.
ENDCLASS.
