
create database bloodbank;
use bloodbank;

create table bloodrequest(
name varchar(200),
mobno varchar(10),
email varchar(200),
bloodgr varchar(20),
status varchar(200));


create table donor(
id int(10),
name varchar(200),
father varchar(200),
mother varchar(200),
mobno varchar(10),
gender varchar(30),
email varchar(200),
bloodgr varchar(20),
address varchar(200));

create table stock(
bloodgr varchar(100),
units varchar(50));

insert into stock values
('A+','100'),
('A-','100'),
('B+','100'),
('B-','100'),
('O+','100'),
('O-','100'),
('AB+','100'),
('AB-','100');

