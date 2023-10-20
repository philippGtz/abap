*&---------------------------------------------------------------------*
*& Report z08_demo_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_demo_03.
data result_i type i.
data result_p type p length 8 decimals 4.

**********************************************************************
*arthimetische Operatoren
**********************************************************************

result_i = 5 + 3. "Addition
write: / |5 + 3 = { result_i }|.

result_i = 5 - 3. "subtraction
write: / |5 - 3 = { result_i }|.

result_i = 5 * 3. "Multiplication
write: / |5 * 3 = { result_i }|.

result_i = 5 / 3. "Division
write: / |5 / 3 = { result_i }|.
result_p = 5 / 3. "Division
write: / |5 / 3 = { result_p }|.

result_i = 5 div 3. "Ganzzahlige Division
write: / |5 DIV 3 = { result_i }|.

result_i = 5 mod 3. "Divisionsrest
write: / |5 MOD 3 = { result_i }|.

result_i = 5 ** 3. "Potenz
write: / |5 ** 3 = { result_i }|.


**********************************************************************
*Zuweisungsoperatoren
**********************************************************************
result_i = result_i + 1.
result_i += 1.
add 1 to result_i.
write: / |3fache Inkrementierung: { result_i }|.

**********************************************************************
*nummerische Funktionen
**********************************************************************
result_i = abs( -5 ).
write: / |abs - 5 = { result_i }|.

result_p = round( val = '873.9767' dec = 2 ).
write: / |round (val = 873.9767 dec = 2) { result_p }|.
