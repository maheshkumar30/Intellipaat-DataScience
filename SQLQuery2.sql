create table Students_Op(
StudentID int primary key,
FirstName varchar(50),
LastName varchar(50),
Age int,
city varchar(50),
Marks int,
Email varchar(50),
Fee decimal(10,2)
);

select *from Students_Op

insert into Students_Op values
(12,'Mahesh','Kumar',22,'Yemmiganur',872,'Mahitejkumar30@gmail.com',21000),
(2,'Priya','Patel',22,'Mumbai',92,null,30000),
(3,'Aman','Khan',18,'Delhi',70,'abc@gmail.com',20000),
(4,'Sneha','Rao',23,'Chennai',65,'bds@gmail.com',28000),
(5,'Ankit','Verma',21,'Kolkata',55,null,15000),
(6,'Sara','Iqbal',19,'Delhi',88,null,32000)

select *from Students_Op where FirstName like ('m%')
select StudentID+10 as ID from Students_Op

--operators
--1.Arthematic 

select Marks+2 as udate from Students_Op 

update Students_Op
set Marks=Marks+2
--2.Comparision

select * from Students_Op where Age>20

select * from Students_Op where Age=20

select * from Students_Op where Fee=20000

--3.Logical

select *from Students_Op where Fee>=20000

--4.Between,in,like

select *from Students_Op where Marks between 80 and 90

select *from Students_Op where FirstName like 'a%'

select * from Students_Op where Age>20 and city='Delhi' or city='Mumbai'
