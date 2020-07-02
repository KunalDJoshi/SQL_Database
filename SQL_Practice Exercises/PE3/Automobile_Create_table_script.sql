create table Automobile 
(
Make varchar(15), 
Model varchar(15),
Year char(4),
Color char(15),
Style char(15),
MSRP double,
VIN smallint(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
PRIMARY KEY(VIN) 
);