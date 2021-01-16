REM =========================================================
REM	file: create_tables.sql
REM	Date Nov 24, 2019
REM =========================================================

prompt... in create_tables.sql...
@@drop_tables
@@create_customer(1)
@@ins_customer
@@create_drug(2)
@@ins_drug
@@create_shipper(3)
@@ins_shipper
@@create_order(4)
@@ins_order
@@create_orderdrug(5)
@@ins_orderdrug
@@create_bank(6)
@@ins_bank
@@create_refund(7)
@@ins_refund

select * from customer 
/
select * from drug
/
select * from shipper
/
select * from orders
/
select * from orderdrug
/
select * from bank
/
select * from refund
/
select table_name from user_tables
/