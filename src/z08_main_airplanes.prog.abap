*&---------------------------------------------------------------------*
*& Report z08_main_airplanes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_main_airplanes.

DATA plane TYPE REF TO zcl_08_airplane.
*plane = NEW zcl_08_airplane( ). " Vehicle vehicle = new Vehicle( );
DATA planes TYPE TABLE OF REF TO zcl_08_airplane.


TRY.
    plane = new zcl_08_passanger_plane( name =  'Josef' plane_type = 'A777'  number_of_seats = 200 ).
    APPEND plane TO planes.
  CATCH zcx_abap_initial_parameter INTO DATA(e).
    WRITE e->get_text( ).
ENDTRY.



TRY.
    plane = NEW #( name =  'Anton' plane_type = 'B888').
    APPEND plane TO planes.
  CATCH zcx_abap_initial_parameter INTO e.
    WRITE e->get_text( ).
ENDTRY.


TRY.
    plane = new zcl_08_cargo_plane( name =  'Vitaly' plane_type = 'C999' cargo_in_tons = 200 ).
    APPEND plane TO planes.
  CATCH zcx_abap_initial_parameter INTO e.
    WRITE e->get_text( ).
ENDTRY.






LOOP AT planes INTO plane.
  WRITE / plane->to_string( ).
ENDLOOP.

WRITE / |ANAZHL DER FLUGZEUGE: { zcl_08_airplane=>number_of_planes }|.
