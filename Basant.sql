create database Bank


create table Users(
id int identity(1,1),
name varchar(255),
password varchar(255),
balance int default 0

)

insert into Users (name, password,balance) values
('ahmed', '123',100),
('Mohamed', '123456',300),
('aya', 'jsda3',1000),
('Mohamed Ahmed', '123456',5000),
('bassant', '12346',700),
('admin', 'admin',100023416)

select * from Users