-- Create New Database
create database school

-- Delete Database

drop database school

-- Use Database
use school

-- Create Table

Create table students(
sid int primary key not null identity(1,1),
lastname nvarchar(20) not null,
firstname nvarchar(20) not null,
dateofbirth	datetime not null,
enrollmentdate datetime not null
)




