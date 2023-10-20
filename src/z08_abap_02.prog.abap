*&---------------------------------------------------------------------*
*& Report z08_abap_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z08_abap_02.

parameters p_KdNr type s_customer.
parameters p_name type s_custname.
parameters p_stadt type city.
parameters p_land type s_country.

write: p_KdNr no-zero , ',' ,(*) p_name , ',' , (*) p_stadt ,',' , (*) p_land.
