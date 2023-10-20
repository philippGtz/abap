*&---------------------------------------------------------------------*
*& Report z08_abap_08
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_abap_08.

PARAMETERS p_cid TYPE s_customer.

DATA bookings TYPE TABLE OF zabap_booking.

TRY.
    bookings = zcl_08_helper=>get_bookings( p_cid ).
  CATCH zcx_no_booking_found INTO DATA(e).
    MESSAGE e->get_text( ) TYPE 'E'.
ENDTRY.


LOOP AT bookings INTO DATA(booking).
  WRITE: / booking-booking_id, booking-carrier_id, booking-connection_id, booking-flight_date, booking-price .
ENDLOOP.
