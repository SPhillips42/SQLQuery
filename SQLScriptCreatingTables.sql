go
drop table if exists students;
go
drop table if exists majors;
go
Create table Majors(

Id int Primary key identity(1,1),
Description nvarchar(50) not null,
);
create table students(

Id int not null primary key identity(1,1),
Firstname nvarchar(30) not null unique,
FavDate datetime,
LovesGamesOfThrones bit not null default 1,
RateGameOfThrones decimal(3,1) not null default 5.0 
check (RateGameOfThrones >= 0 and  RateGameOfThrones <= 10.0),
MajorsId int Foreign key references Majors(id)
); 
go
insert into Majors (Description) values ('Math');
insert into Majors (Description) values ('Enineering');
insert into Majors (Description) values ('Education');
insert into Majors (Description) values ('Management');
insert into Majors (Description) values ('CS');
go
insert into students
(Firstname, FavDate, MajorsId)
values
('Seth','2019-11-09', 1)
go
insert into students
(Firstname, FavDate, MajorsId)
values
('George','2018-11-09', 2),
('Sethard','2018-11-09', 2)
