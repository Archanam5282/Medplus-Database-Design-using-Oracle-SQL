REM ================================================================
REM fILE:	create_uv1.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview1 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  ORDER DEATIL TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 100

SELECT c.customerid, c.custfname, c.custlname,  c.custphnum, c.email,
 d.drugid,d.drugname, 
e.cost, 
o.orderid, o.orderdate 
FROM customer c, drug d, orderdrug e, orders o
WHERE c.customerid=o.customerid and e.orderid=o.orderid and e.drugid=d.drugid;