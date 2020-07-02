#Name:- Joshi Kunal Deepak
#Course:- Database ISTE230.01
#Date:- 11/05/2019
#PE06


DROP DATABASE IF EXISTS PEWEEK9;

CREATE DATABASE PEWEEK9;

USE PEWEEK9;

create table Customer(
CustID smallint(10),
CustName varchar(10),
CustContact int(10),
CONSTRAINT Customer_PK PRIMARY KEY(CustID)
);

create table Product(
ProductID smallint(10),
ProdDescription varchar(20),
UnitPrice decimal(7,2),
CONSTRAINT Product_PK PRIMARY KEY(ProductID)
);

create table PO_Detail(
PO int(10),
CustID smallint(10),
ProductID smallint(10),
Quantity decimal(5,2),
CONSTRAINT PO_Detail_PK PRIMARY KEY(PO),
CONSTRAINT PO_Detail_Customer_FK FOREIGN KEY(CustID) REFERENCES Customer(CustID),
CONSTRAINT PO_Detail_Product_FK FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);


create table PO(
PO int(10),
OrderDate date,
BillToAddress varchar(20),
ShipToAddress varchar(20),
CONSTRAINT PO_PK PRIMARY KEY(PO),
CONSTRAINT PO_PO_Detail_FK FOREIGN KEY(PO) REFERENCES PO_Detail(PO)
);

