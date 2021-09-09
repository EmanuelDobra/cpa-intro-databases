-- fitness club example Dec 9

-- ------------------------create database
drop database if exists fitness;
create database fitness;
use fitness;


-- ------------------------create tables and insert rows (data)
create table program
(
	programID		INT		 	primary key,
    programDesc		varchar(30),
    programFee		decimal(4,2),
    programPhysical	boolean
);
										-- One program may have many members 1:M
Insert into program values 
(10, 'Team Fit',  	  19.99, false),
(20, 'Power Fit', 	  35,    true),
(30, 'All Yoga',   	  40,    false),
(40, 'Gentle Fit',    30,    false);


create table members
(
	memberID			 int		primary key,
    memberFName			 varchar(30),
    memberLName			 varchar(30),
    memberCity			 varchar(40),
	memberDateEnrolled	 date,
    programID			 int,
    foreign key(programID)
       references program(programID)
);

insert into members values
(11, 'Liz',    'Darien',   'Napanee',  '2020-01-03', 10),
(22, 'Alisha', 'Potter',   'Kingston', '2020-01-03', 20),
(33, 'Jim',    'Renaud',   'Kingston', '2020-02-10', 30),
(44, 'Robin',  'Mendez',   'Napanee',  '2020-01-31', 40),
(55, 'Pat',    'Sauven',   'Nepean',   '2020-01-03', 40),
(66, 'Lance',  'Lawrence', 'Kingston', '2020-04-14', 20);

select *
from members;

   
