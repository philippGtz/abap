*&---------------------------------------------------------------------*
*& Report z08_demo_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_02.
**********************************************************************
*Wichige ABAP Standardtypen
**********************************************************************
Types ty_i type i. "Ganze Zahlen (bsp 43)
types ty_c40 type c Length 40. "Zeichenkette fester Länge (bsp 'Hello World)
types ty_n7 Type n length 7. "Nummerische Folge fester Länge (bsp 2349876)
types ty_d type d. "Datum (Bsp '20231016)
types ty_t type t. "Zeit (bsp '105525)
types ty_p162 type p length 16 decimals 2. "Kommazahl (bsp '567.23')
types ty_boolean type c length 1. "'Boolscher Warheitswert' (bsp 'X')
**********************************************************************
*gepackte Zahl
**********************************************************************
*types ty_p162 type p length 16 decimals 2.
*Länge in Byte: Length --> 16
*Anzahl der Ziffern: 2 * Length - 1 -> 31
*Nachkommastellen: Decimals --> 2
*Vorkommastellen: Anzahl Zifffern - Decimals --> 29
**********************************************************************
*Deklaration von Variabalen
**********************************************************************
Data matriculation_number type ty_n7. "Lokaler Datentyp
data decimal type p Length 8 decimals 3. " ABAP Standardtyp
data carrier_id type s_carr_id. "Datenelement (globaler Datentyp)

matriculation_number = '583434'. "Zuweisungsoperator
Data connection_id type s_conn_id value '0400'. "staatische Vorbelegung
data(text) = 'Hello World'. "Inlinedeklaration

write: matriculation_number, connection_id, text.

**********************************************************************
*Initialisierung
**********************************************************************
clear text.
connection_id = '0000'.
text = 'Ciao World'.

"write''.

**********************************************************************
*Deklaration fixer Datenobjekte
**********************************************************************
Constants pi type p length 2 decimals 2 value '3.14'.

**********************************************************************
*Deklaration von Eingabeparameter
**********************************************************************
parameters p_cid type c length 3.
parameters p_cid2 type s_carr_id.

write: p_cid, p_cid2.
