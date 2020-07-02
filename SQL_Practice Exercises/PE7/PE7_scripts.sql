drop database if exists PE7;
create database PE7;
use PE7;
create table STUDENT
(
StudentID int(5),
Name varchar(10),
Major varchar(10)
);

create table ITSTUDENT
(
StudentID int(5),
Name varchar(10),
Major varchar(10)
);


Insert into STUDENT(StudentID,Name,Major) values (123,"Bill","IT");
Insert into STUDENT(StudentID,Name,Major) values (234,"Sue","CS");
Insert into STUDENT(StudentID,Name,Major) values (345,"Tom","SE");
Insert into STUDENT(StudentID,Name,Major) values (456,"Ann","BUS");
Insert into STUDENT(StudentID,Name,Major) values (567,"Linda","IT");
Insert into STUDENT(StudentID,Name,Major) values (678,"Tom","IT");
Insert into STUDENT(StudentID,Name,Major) values (789,"Sue","LA");

Insert into ITSTUDENT(StudentID,Name,Major) values(123,"Bill","IT");
Insert into ITSTUDENT(StudentID,Name,Major) values(567,"Linda","IT");
Insert into ITSTUDENT(StudentID,Name,Major) values(678,"Tom","IT");
Insert into ITSTUDENT(StudentID,Name,Major) values(890,"Jon","IT");
Insert into ITSTUDENT(StudentID,Name,Major) values(901,"Lynn","IT");


select StudentID,Name,Major from STUDENT
UNION
select StudentID,Name,Major from ITSTUDENT;

--For intersection operation (MySql does not support INTERSECT keyword) 
select StudentID, Name, Major from STUDENT where 
STUDENT.StudentID EXISTS (select StudentID from ITSTUDENT 
where STUDENT.StudentID=ITSTUDENT.StudentID);

--intersection using exists keyword
select st.StudentID, st.Name, st.Major from STUDENT st where 
 EXISTS(select  its.StudentID, its.Name, its.Major from ITSTUDENT its 
where st.StudentID=its.StudentID);

--For difference operation (MySql does not support MINUS keyword)
select StudentID, Name, Major from STUDENT where 
 STUDENT.StudentID NOT IN(select StudentID from ITSTUDENT 
where ITSTUDENT.StudentID=STUDENT.StudentID);


--difference using not exists keyword
select StudentID, Name, Major from STUDENT where 
STUDENT.StudentID NOT EXISTS(select StudentID from ITSTUDENT 
where STUDENT.StudentID=ITSTUDENT.StudentID);


select StudentID, Name, Major from ITSTUDENT where 
 ITSTUDENT.StudentID NOT IN(select StudentID from STUDENT 
where STUDENT.StudentID=ITSTUDENT.StudentID);

