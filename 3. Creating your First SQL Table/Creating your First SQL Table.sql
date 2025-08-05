create database mytestdb

use mytestdb

create table mytesttable
(
rollno int,
firstname varchar(50),
lastname varchar(50),
)

use mytestdb
select rollno, firstname, lastname from mytesttable

insert into mytesttable(rollno, firstname, lastname)
values(10, 'Ananthakrishnan', 'A L')

select rollno, firstname, lastname from mytesttable