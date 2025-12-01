-- DDL DML DCL DQL

--DDL
----Create

create database database_name

create database Day2

--use database name

use Day2

--create table

--create table tablename(
--colname datatype,
--colname datatype,


--colname datatype,
--)

create table Student(
	Rno int,
	Sname varchar(50),
	Grade char(1),
)

----Alter

--alter table tablename
--add colname datatypes

alter table Student
add Age int

--update datatype

alter table tablename
alter column colname datatype

alter table Student
alter column Sname varchar(100)

----Drop

alter table tablename
drop column colname

alter table Student
drop column Age

--DQL
----Select
----select *from student

select * from student

--DML
----insert

insert into tablename values(),(),()

insert into Student values
(1,'Mahesh','A'),
(2,'Kumar','A'),
(3,'MK','A')
----update

----update tablename
----set colname=value
----where condition
update Student
set Grade='B'
where Rno=1

----delete

delete from tablename where condition

delete from Student where Rno=1

--DCL
----GRANT
grant command to tablename to user

grant select on student to user

----REVOKE

revoke command on tablename from user

revoke select on student from user1

--Constraints
----NotNull
----Unique
----Check
----Default
----Primary key
----Foreign key

use Day2

create table dept(
	depid int primary key,
	depname varchar(50)
)
drop table dept
create table employee(
	empid int primary key,
	empname varchar(50) not null,
	empsalary int default 25000,
	email varchar(50) unique,
	empage int check(empage>18),
	depid int,
	foreign key (depid) references dept(depid)
)
select *from employee
	
sp_help 'employee'

adding constraints using alter

--not null

alter table tablename
alter column colname datatype not null

--primary key

1st it should be not null
alter table tablename
add constraint constraint_name primary key(colname)


--unique
alter table tablename
add constraint constraint_name unique(colname)

--check
alter table tablename
add constraint constraint_name check colname(condition)

--foreign key
alter table tablename
add constraint constraint_name foreign key(colname) reference other_table_name(colname)

--default
alter table tablename
add constraint constraint_name default value for colname 