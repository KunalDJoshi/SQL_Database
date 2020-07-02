#Name:- Joshi Kunal Deepak
#Course:- Database ISTE230.01
#Date:- 11/14/2019
#PE09


drop database if exists PE9;

create DATABASE PE9;

use PE9;

#creating a BankAccount table which is a STRONG entity
create table BankAccount
(
accountNo int(10),
firstName varchar(10),
lastName varchar(10),
mobile bigint(10),
city varchar(10),
amount double(10,2),
constraint BankAccount_PK PRIMARY KEY(accountNo)
);

#creating a Loan table which is a WEAK entity
create table Loan
(
accountNo int(10),
firstName varchar(10),
lastName varchar(10),
mobile bigint(10),
city varchar(10),
loanAmount double(10,2),
paymentDate date,
constraint Loan_PK PRIMARY KEY(accountNo),
constraint Loan_BankAccount_FK FOREIGN KEY(accountNo) references BankAccount(accountNo)
);


Insert into BankAccount(accountNo,firstName,lastName,mobile,city,amount) values(210250,"Bill","Smith",985256245,"New York",85507.58);
Insert into BankAccount(accountNo,firstName,lastName,mobile,city,amount) values(824524,"Sue","Johnson",588525624,"Rochester",85241.36);
Insert into BankAccount(accountNo,firstName,lastName,mobile,city,amount) values(355147,"Tom","Williams",249525614,"Chicago",95410.50);
Insert into BankAccount(accountNo,firstName,lastName,mobile,city,amount) values(892245,"Ann","Jones",187725624,"Boston",27328.66);
Insert into BankAccount(accountNo,firstName,lastName,mobile,city,amount) values(288516,"Linda","Miller",288505624,"Buffalo",74560.55);


Insert into Loan(accountNo,firstName,lastName,mobile,city,loanAmount,paymentDate) values(210250,"Bill","Smith",985256245,"New York",5507.58,"2020-12-14");
Insert into Loan(accountNo,firstName,lastName,mobile,city,loanAmount,paymentDate) values(824524,"Sue","Johnson",588525624,"Rochester",8241.36,"2022-11-24");
Insert into Loan(accountNo,firstName,lastName,mobile,city,loanAmount,paymentDate) values(355147,"Tom","Williams",249525614,"Chicago",9410.50,"2022-08-14");


#Question 1 Query all the records of the STRONG entity (i.e., BankAccount table here)
select accountNo,firstName,lastName,mobile,city,amount from BankAccount;


#Question 2 Query all the records of the WEAK entity (i.e., Loan table here)
select accountNo,firstName,lastName,mobile,city,loanAmount,paymentDate from Loan;


#Question 3 Query of selective data from BOTH the STRONG entity & WEAK entity
select ba.accountNo, ba.firstName, ba.lastName,ba.mobile,ba.city,ba.amount as balance,la.loanAmount,la.paymentDate from 
BankAccount ba, Loan la where ba.accountNo=la.accountNo;