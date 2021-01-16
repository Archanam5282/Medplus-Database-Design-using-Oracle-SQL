
---------------------------------------------------------------
--	File: create_bank.sql
--	Date Nov 17, 2019
--	Purpose: Create bank table for Medplus
---------------------------------------------------------------

PROMPT ... Creating table bank

CREATE TABLE Bank 
(BankAccNum VARCHAR(9),
 BankName VARCHAR2(50),
CustomerID NUMERIC(6),
OrderID NUMERIC(10),
 CONSTRAINT bank_pk_acconumb PRIMARY KEY (BankAccNum),
 CONSTRAINT bank_fk_custid FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
CONSTRAINT bank_fk_ordid FOREIGN KEY (OrderID) REFERENCES Orders (ORDERID)
)
/

