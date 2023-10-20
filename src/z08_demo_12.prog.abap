*&---------------------------------------------------------------------*
*& Report z08_demo_12
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_12.

**********************************************************************
*Deklaration von Tabellen
**********************************************************************

DATA connections TYPE z08_connections. "Tabellentyp
"connectionList connections =  new ConnectionList();
DATA connections2 TYPE TABLE OF z00_connection. " Type table of [Strukturtyp]
"List<Connection> connections = new ArrayList<>();

**********************************************************************
*Hinzufügen von Datensätzen
**********************************************************************
connections = VALUE #(
    ( carrier_id = 'LH' connection_id = '0400' )
    ( carrier_id = 'UA' departure_city = 'New York' )
    ( )
    ( carrier_id = 'LH' arrival_city = 'Frankfurt' ) ).

   connections = value #( Base connections ( carrier_id = 'AA' connection_id = '0017' arrival_city = 'Rom' )  ).

WRITE ''.
