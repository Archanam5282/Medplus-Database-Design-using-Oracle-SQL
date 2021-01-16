
---------------------------------------------------------------
--	File: create_refund.sql
--	Date Nov 24, 2019
--	Purpose: Create refund topics table for medplus online pharmacy 
---------------------------------------------------------------



PROMPT ... Creating table refund

CREATE TABLE REFUND
(RefundID 	VARCHAR2(6),
 RefundDetail	VARCHAR2(33),
 OrderID	NUMERIC(6),
 BankAccNum VARCHAR(10),
 CONSTRAINT ref_pk_refundid PRIMARY KEY (RefundID),
 CONSTRAINT ref_fk_bank_bankacco FOREIGN KEY (BankAccNum) REFERENCES Bank (BankAccNUm),
CONSTRAINT ref_fk_ord_orderid FOREIGN KEY (OrderID) REFERENCES Orders (OrderID)
)
/

