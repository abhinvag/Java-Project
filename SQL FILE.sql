DROP DATABASE IF EXISTS project;
create database project;
show databases;
use project;
show tables;

create table Account(
	accountno varchar(15) primary key,
	balance int(10)
);

create table user(
	userID int primary key,
	Name varchar(15),
	accountno varchar(15),
	Password varchar(30),
	Email varchar(35),
	dob varchar(12),
	foreign key(accountNo) references Account(accountNo)
);

create table Admin(
	adminID int primary key,
	password varchar(50)
);

create table Transaction(
	transactionID int auto_increment primary key,
	transactionAmount int,
	dateoftransaction varchar(12),
	WithdrawAccNo varchar(15),
	DepositAccNo varchar(15),
	statusOfTrans varchar(10),
	foreign key(WithdrawAccNo) references Account(accountNo),
	foreign key(DepositAccNo) references Account(accountNo)
);

insert into admin values(123,'123@#');

insert into account values('105824130',1789000);
insert into account values('105344130',1000067);
insert into account values('885824130',1600000);
insert into account values('178824130',1005600);
insert into account values('105825730',1000670);
insert into account values('105524130',1230000);
insert into account values('105824190',1000800);
insert into account values('105826790',1000056);
insert into account values('905824190',1000000);

insert into user values(203,'Tanush','105824130','Tanush@123','19ucs203@lnmiit.ac.in','2001-10-19');
insert into user values(254,'Abhinav','105344130','Abhinav@123','19ucs254@lnmiit.ac.in','2000-12-20');
insert into user values(201,'Garvit','178824130','Garvit@123','19ucs201@lnmiit.ac.in','2001-3-12');
insert into user values(237,'Raghav','885824130','Raghav@123','19ucs237@lnmiit.ac.in','2001-05-11');
insert into user values(238,'Pramod','105825730','Pramod@123','pramod.idbms@lnmiit.ac.in','1985-12-17');
insert into user values(239,'Nirmal','105524130','Nirmal@123','nirmal.ap@lnmiit.ac.in','1985-10-21');
insert into user values(240,'Manish','105826790','Manish@123','manish.lab@lnmiit.ac.in','1989-04-12');
insert into user values(241,'Ram Prakash','105824190','Ram@123','ram.idbms@lnmiit.ac.in','1980-03-29');
insert into user values(200,'Test','905824190','test','test@gmail.com','1980-03-29');

select * from user;
