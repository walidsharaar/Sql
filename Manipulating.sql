-- Create New Database
create database school

-- Delete Database

drop database school

-- Use Database
use school

-- Create table

Create table students(
sid int primary key not null identity(1,1),
lastname nvarchar(20) not null,
firstname nvarchar(20) not null,
dateofbirth	datetime not null,
enrollmentdate datetime not null
)

--Create course table

create table courses(
courseid int identity(1,1) primary key not null,
title nvarchar(30),
creditsnumber int,
coursecode nvarchar(5) -- ex:CS201
)

-- Insert value into the tables


insert into students(
lastname,
firstname,
dateofbirth,
enrollmentdate
)
values(
'Reynolds', 'McFee', '1999-01-11','2021-01-11'
)