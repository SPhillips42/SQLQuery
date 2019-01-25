use master;
go
alter database PrsDb set single_user with rollback immediate
go
drop database if exists PrsDb;
go
create database PrsDb;
go
use PrsDb;
go
create table Users(
UsersId int Foreign key references Users(id),
Id int not null primary key identity(1,1),
Username nvarchar(30) not null unique,
Password nvarchar(30) not null,
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Phone nvarchar(30),
email nvarchar(30),
IsReviewer bit not null default 0,
IsAdmin bit not null default 0,
Active bit not null default 1,

);
insert Users
(Username, Password, Firstname, Lastname, IsAdmin, IsReviewer, Active)
values
('Sirchef', 'guest','Seth','Phillips',1,1,1),
('Sirchef24', 'guest','Sethard','Philllips',1,0,1),
('Sirchef42', 'guest','Sethin','Philips',0,1,1)
go
create table Vendors(

Id int Primary key,
Code nvarchar(4) not null unique,
Names nvarchar(50) not null,
Address nvarchar(30),
City nvarchar(10),
State nchar(2),
Zip nvarchar(9),
Phone nvarchar(12),
email nvarchar(255),
IsPreferred bit not null default 1,
Active bit not null default 1,

);
go
insert Vendors
(Names, Code, Id)
Values
('Apple', 1, 1),
('Amazon', 2, 2),
('Walmart', 3, 3)
go
create table Products(
ProductsId int Foreign key references Products(id),
Id int Primary key,
VendorsId int Foreign key references Vendors(id),
PartNumber nvarchar(30) not null,
name nvarchar(30) not null,
Price decimal(9,2) not null default 0,
unit nvarchar(10) not null default 'Each',
PhotoPath nvarchar(255),
Active bit not null default 1

);
go
insert Products
(Name, PartNumber,Price, Id)
Values
('Apple Ipad', 1, 499.99, 4),
('Amazon Echo', 2, 99.99, 5),
('Beer', 3, 19.99, 6),
('Apple Ipod Touch', 1, 199.99, 1),
('Amazon Echo Dot', 2, 39.99, 2),
('Milk', 3, 1.99, 3)
go
create table Requests(
RequestsId int Foreign key references Requests(id),
Id int primary key not null,
UsersId int not null,
Description nvarchar(80),
Justification nvarchar(80),
RejectionReason nvarchar(80),
DelieveryMode nvarchar(30) default 'Pickup',
ReviewDate datetime not null default getdate(),
Status nvarchar(10) not null default 'NEW',
check (status in ('New','Review','Approved','Rejected')),
Total decimal(11,2) not null default 0,
Active bit not null default 1
);
go
create table RequestLines(
Id int primary key,
ProductsId int not null,
RequestId int not null,
Quantity int not null default 1

);
go