#The script creates a database called mylibrary which has 4 tables

drop database if exists mylibrary;
create database mylibrary;
use mylibrary;


#This createse the first table called membership 
create table membership(
libraryid varchar(10),
fname varchar(20),
lname varchar(20),
email varchar(30),
phone varchar(30),
primary key(libraryid)
);

#This puts in values into the membership table respecting to each column
insert into membership values(
"LI01","Shelly","Ridley","shelly.ridley@gmail.com","066 241 2521");

insert into membership values(
"LI02","Phillip","Felix","phillip.felix@gmail.com","066 452 6135");

insert into membership values(
"LI03","Louise","Milne","louise.milne@gmail.com","090 181 9876");

insert into membership values(
"LI04","Emilia","Sweet","emilia.sweet@gmail.com","066 945 0128");

insert into membership values(
"LI05","Anthony","Pham","anthony.pham@gmail.com","066 945 0128");

insert into membership values(
"LI06","Brett","Regan","brett.regan@gmail.com","087 745 0112");

insert into membership values(
"LI07","Adriana","Russo","adriana.russo@gmail.com","070 423 4562");

insert into membership values(
"LI08","Nathalie","Mcintyre","nathalie.mcintyre@gmail.com","066 123 0148");

insert into membership values(
"LI09","Leanna","Crowther","leanna.crowther@gmail.com","089 231 1234");

insert into membership values(
"LI10","Edward","George","edward.george@gmail.com","089 012 0761");



#This creates the second table called books
create table books(
bookid varchar(10),
genre varchar(10),
bookname varchar(30),
author varchar(20),
libraryid varchar(10),
primary key(bookid),
foreign key (libraryid) references membership (libraryid)
);


#Below commands inserts values into the books table respecting to each column
insert into books values(
"BI21","Fantasy","The Name of the Wind","Patrick Rothfuss","LI01");

insert into books values(
"BI22","Fantasy","A Game of Thrones","George R. R. Martin","LI02");

insert into books values(
"BI23","Thriller","Verity","Colleen Hoover","LI03");

insert into books values(
"BI24","Thriller","Gone Girl","Gillian Flynn","LI07");

insert into books values(
"BI25","Mystery","The Maid: A Novel"," Nita Prose","LI06");

insert into books values(
"BI26","Mystery","The Boy from the Woods","Harlan Coben","LI04");

insert into books values(
"BI27","Thriller","The Man Who Died Twice","Richard Osman","LI05");

insert into books values(
"BI28","Mystery","Shadows Reel","C. J. Box","LI09");

insert into books values(
"BI29","Thriller","A Paris Apartment","Michelle Gable","LI08");

insert into books values(
"BI30","Thriller","The Silent Patient"," Alex Michaelides","LI10");



#This creates the third table called record 

create table record(
rentaldate date,
returndate date,
libraryid varchar(10),
bookid varchar(10),
phone varchar(30),
primary key(bookid),
foreign key (libraryid) references membership (libraryid)
);



#Below commands inserts values into the record table respecting to each column

insert into record values(
"2022-03-06","2022-09-03","LI01","BI21","066 241 2521");

insert into record values(
"2022-02-03","2022-05-04","LI02","BI22","066 452 6135");

insert into record values(
"2022-02-05","2022-09-05","LI03","BI23","090 181 9876");

insert into record values(
"2022-02-05","2022-03-05","LI07","BI24","066 945 0128");

insert into record values(
"2022-02-05","2022-04-05","LI06","BI25","066 945 0128");

insert into record values(
"2022-05-06","2022-02-06","LI04","BI26","066 945 0128");

insert into record values(
"2022-02-02","2022-02-02","LI05","BI27","066 945 0128");

insert into record values(
"2022-01-04","2022-09-04","LI09","BI28","066 945 0128");

insert into record values(
"2022-03-02","2022-02-02","LI08","BI29","066 945 0128");

insert into record values(
"2022-01-05","2022-02-06","LI10","BI30","066 945 0128");


#This creates the fourth table called location

create table location(
bookid varchar(10),
bookshelf varchar(10),
area varchar(10),
bookamount decimal(10),
foreign key(bookid) references books(bookid)
);



#Below commands inserts values into the location table respecting to each column

insert into location values(
"BI21","B3","NORTH","20");

insert into location values(
"BI22","B3","NORTH","15");

insert into location values(
"BI23","B5","SOUTH","17");

insert into location values(
"BI24","B7","SOUTH","18");

insert into location values(
"BI25","B4","NORTH","21");

insert into location values(
"BI26","B2","EAST","16");

insert into location values(
"BI27","B5","SOUTH","17");

insert into location values(
"BI28","B5","WEST","11");

insert into location values(
"BI29","B3","EAST","20");

insert into location values(
"BI30","B7","WEST","15");




