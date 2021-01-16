
---------------------------------------------------------------
--	File: create_order.sql
--	Date Nov 17, 2019
--	Purpose: Create order table for medplus online pharmacy
---------------------------------------------------------------


PROMPT ... Creating orders

CREATE TABLE ORDERS
(OrderID NUMERIC(10),
 OrderDate VARCHAR(10),
 PaymentType VARCHAR(9), 
DeliveredOn VARCHAR(10),
 CustomerID NUMERIC(3),
 ShipperID NUMERIC(3),
 CONSTRAINT order_pk_ord_id PRIMARY KEY (OrderID),
 CONSTRAINT order_fk_cust_custid FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT order_fk_cust_shipid FOREIGN KEY (ShipperID) REFERENCES Shipper(ShipperID)
)
/

