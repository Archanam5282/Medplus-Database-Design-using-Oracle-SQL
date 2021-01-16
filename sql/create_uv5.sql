REM ================================================================
REM fILE:	create_uv5.sql
REM Date: 24 Nov  2019
REM PURPOSE:To create userview5 for MedPlus Online database
REM ================================================================

PROMPT ... CREATING  REFUND TABLE FOR Medplus Online Pharmacy
SET LINESIZE 500
SET PAGESIZE 110

SELECT    r.refundid, r.refunddetail, c.customerid, c.custfname, b.bankaccnum, b.bankname
FROM refund r, customer c, bank b
WHERE c.customerid=b.customerid and r.bankaccnum=b.bankaccnum;