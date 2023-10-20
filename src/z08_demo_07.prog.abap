*&---------------------------------------------------------------------*
*& Report z08_demo_07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_07.

write / |Anmeldename: { sy-uname }|.
write / |Datum des Servers: { sy-datum date = user }|.
write / |Zrit des Servers: { sy-uzeit }|.
write / |Datum des Client: { sy-datlo }|.
write / |Zrit des Client: { sy-timlo }|.
write / |Anmeldemandant: { sy-mandt }|.
write / |Anmeldesprache: { sy-langu }|.
