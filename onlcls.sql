use onldbm;
create table Sturecs(sno varchar(3) primary key, Stu_Name varchar(24) unique, Tot_Marks smallint not null);
insert into Sturecs(sno,stu_name,Tot_Marks) values('101','Sriram',450);
insert into sturecs(sno,stu_name,Tot_Marks) values(102,'Sagar',450);
insert into sturecs(sno,stu_name,Tot_Marks) values('103',null,450);
insert into sturecs(sno,stu_name,Tot_Marks) values('104','pallavi',0);
select * from sturecs;
truncate table sturecs;
create table StuFIN(sno varchar(3), Stu_Name varchar(24) default 'John', Tuition int default 45000);
insert into Stufin(sno,Stu_name) values('101','Sriram');
insert into Stufin values('102',450);
insert into Stufin values('102','Sagar',35000);
insert into Stufin values('103','null',null);
insert into Stufin values('104',null,45000);
insert into Stufin values(null,null,null);
truncate table stufin;
select * from stufin;
drop table stufin;
set sql_safe_updates=0;
update stufin set Stu_name='john' where Stu_Name is null ;
update stufin set Tuition=45000 where Tuition is null ;
update stufin set Stu_name='john' where Stu_Name = 'null' ;
delete from stufin where sno='104';
update stufin set Stu_name='jack sparrow';
alter table sturecs add Email varchar(50);
update sturecs set Email=case sno
when '101' then 'STU1@gmail.com'
when '102' then 'STU2@gmail.com'
when '103' then 'STU3@gmail.com'
when '104' then 'STU4@gmail.com'
end where sno between 101 and 120; 
alter table sturecs drop Email;
alter table sturecs rename column Tot_Marks to Tot;
alter table sturecs modify Stu_Name varchar(30);
update sturecs set Stu_name='jack sparrow' where sno='103';