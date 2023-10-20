CLASS zcl_08_helper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get_booking_with_customer
      IMPORTING carrier_id                   TYPE s_carr_id
                connection_id                TYPE s_conn_id
                flight_date                  TYPE s_date
                booking_id                   TYPE s_book_id

      RETURNING VALUE(booking_with_customer) TYPE zabap_booking_with_customer
      RAISING   zcx_no_booking_found
                zcx_no_customer_found.

    CLASS-METHODS get_bookings
      IMPORTING customer_id     TYPE s_customer

      RETURNING VALUE(bookings) TYPE z08_bookings
      RAISING
        zcx_no_booking_found.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.




CLASS zcl_08_helper IMPLEMENTATION.
  METHOD get_booking_with_customer.
    DATA(booking) = zcl_abap_helper=>get_booking(
                                               carrier_id  =  carrier_id
                                               connection_id = connection_id
                                                 flight_date  = flight_date
                                                 booking_id   = booking_id ).

    DATA(customer_id) = booking-customer_id.

    DATA(customer) = zcl_abap_helper=>get_customer( customer_id ).

    booking_with_customer = CORRESPONDING #( booking ).
    booking_with_customer = CORRESPONDING #( BASE ( booking_with_customer ) customer ).


  ENDMETHOD.

  METHOD get_bookings.
    bookings = zcl_abap_helper=>get_bookings( customer_id ).
  ENDMETHOD.

ENDCLASS.
