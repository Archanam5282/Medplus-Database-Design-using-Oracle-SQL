REM ================================================================
REM fILE:	create_uv4.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview4 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  SHIPPER INFORMATION TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 110

SELECT    s.shipperid, s.shippername, s.shipperphno, o.orderid, o.deliveredon, e.cost
FROM shipper s, orderdrug e, orders o
WHERE s.shipperid=o.shipperid and o.orderid=e.orderid;