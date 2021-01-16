REM ================================================================
REM fILE:	create_uv6.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview6 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  DISCOUNT DRUG TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 110

SELECT    d.drugid, d.drugtype, d.drugname, d.discount, o.orderid
FROM drug d, orders o, orderdrug e
WHERE d.drugid=e.drugid and o.orderid=e.orderid;