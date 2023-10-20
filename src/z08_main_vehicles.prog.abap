*&---------------------------------------------------------------------*
*& Report z00_main_vehicles
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_main_vehicles.

DATA vehicle TYPE REF TO zcl_08_vehicle. "Vehicle vehicle;
*DATA(vehicle2) = NEW zcl_00_vehicle( ). "Vehicle vehicle = new Vehicle( );
DATA vehicles TYPE TABLE OF REF TO zcl_08_vehicle. "List<Vehicle> vehicles = new ArrayList<>();

WRITE zcl_08_vehicle=>number_of_vehicles.

TRY.
    vehicle = NEW zcl_08_car( make = 'VW' model = 'Up' number_of_seats = 4 ). "vehicle = new Vehicle("VW", "Up");
    APPEND vehicle TO vehicles.
  CATCH zcx_08_inital_parameter INTO DATA(e).
    WRITE e->get_text( ).
ENDTRY.

*WRITE zcl_00_vehicle=>number_of_vehicles.

TRY.
    vehicle = NEW zcl_08_truck( make = 'MAN' model = 'TGX' cargo_in_tons = 40 ).
    APPEND vehicle TO vehicles.
  CATCH zcx_08_inital_parameter INTO e.
    WRITE e->get_text( ).
ENDTRY.

WRITE zcl_08_vehicle=>number_of_vehicles.

TRY.
    vehicle = NEW zcl_08_vehicle( make = 'Porsche' model = '' ).
    APPEND vehicle TO vehicles.
  CATCH zcx_08_inital_parameter INTO e.
    WRITE e->get_text( ).
ENDTRY.

WRITE zcl_08_vehicle=>number_of_vehicles.


" Ausgabe
LOOP AT vehicles INTO vehicle.
  WRITE / vehicle->to_string( ).
ENDLOOP.
