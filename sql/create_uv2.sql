REM ================================================================
REM fILE:	create_uv2.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview2 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  BANK DEATIL TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 100

SELECT  b.bankaccnum, b.bankname, c.customerid, o.orderid, o.orderdate
FROM bank b, customer c, orders o
WHERE b.customerid=c.customerid and c.customerid=o.customerid;