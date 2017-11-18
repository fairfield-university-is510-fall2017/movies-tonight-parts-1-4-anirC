#create database MoviesTonight
#use MoviesTonight
create table movie (
MID int (11) not null auto_increment,
Title varchar(255) not null,
Rating varchar(1) default null,
Primary Key (MID)
);

create table shows (
SID int (11) not null auto_increment,
Showtime datetime,
Primary Key (SID)
);

create table Theater (
TID int (11) not null auto_increment,
Name varchar(255) not null,
Location varchar(255) not null,
Phone varchar(15) default null,
Primary Key (TID)
);

create table Credits (
CID int (11) not null auto_increment,
CCode varchar(1) default null,
Primary Key (CID)
);

create table Artist (
AID int (11) not null auto_increment,
Name varchar(255) not null,
Age integer(3) default 0,
Primary Key (AID)
);

ALTER TABLE Shows  add column MID integer(11);

ALTER TABLE Shows  
  ADD FOREIGN KEY (TID)
    REFERENCES Theater (TID);

#select * from shows