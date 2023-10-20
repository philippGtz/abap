*&---------------------------------------------------------------------*
*& Report z08_demo_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_04.

data text type string value 'Hello'.
data text2 type string value 'World'.
data text3 type string.

text3 = text && | | &&  text2.
write text3.

text3 = |{ text } { text2 }|.
write text3.

write / |Länge von text3:{ strlen( text3 ) }|.
