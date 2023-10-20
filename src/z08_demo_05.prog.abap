*&---------------------------------------------------------------------*
*& Report z08_demo_05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_05.

data carrier_id type s_carr_id value 'LH'.
data flight_date type s_date value '20231016'.
data error.


**********************************************************************
*Vergleichsoperatoren und logische Operatoren
**********************************************************************
*>, >=, <, <=, =, <>
*Logische Operatoren: AND,OR,NOT

**********************************************************************
*Einfachverzweigung
**********************************************************************

if ( flight_date >= '20230101' and flight_date <= '20231231' ) and not carrier_id = 'LH'.
    write 'Bedingung erfüllt'.
else.
    write 'Bedingung nicht erfüllt'.
endif.

if error is not initial. "error = abap_false. "IF error ='X'.
    write 'Fehler'.
endif.

**********************************************************************
*Komplexe Falluntedcheidungen
**********************************************************************
case carrier_id.
    when 'LH' or 'lH' or 'Lh'.
        write 'Lufthansa'.
    when 'UA'.
        write 'United Airlines'.
    when others.
        write carrier_id.
endcase.
