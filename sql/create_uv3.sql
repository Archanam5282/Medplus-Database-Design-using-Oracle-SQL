REM ================================================================
REM fILE:	create_uv3.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview3 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  CUSTOMER DETAIL TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 100

SELECT   c.customerid, c.age, c.address, c.city, c.zip, o.orderid, s.shipperid, s.shippername
FROM shipper s, customer c, orders o
WHERE s.shipperid=o.shipperid and c.customerid=o.customerid;