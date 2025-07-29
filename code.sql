-- created my database
create database project;
use project;

-- for viewing imported sheet
select *from marks;

-- to see avg,max,min marks of each couse and section
select course,section,avg(marks) from marks group by course,section order by course,section asc;
select course,section,max(marks) from marks group by course,section order by course,section asc;
select course,section,min(marks) from marks group by course,section order by course,section asc;

-- changed col name to names
alter table marks change column name names varchar(50);

-- to see in detail just about course only
select max(marks),course from marks group by course;
select avg(marks),course from marks group by course;
select min(marks),course from marks group by course;

-- to check who are the top mid and low marks student from each section and couse very clearly
select course,names,section from marks where marks<50 order by section,course,names asc;
select course,names,section from marks where marks<70 and marks>50 order by section,course,names asc;
select course,names,section from marks where marks>90 order by section,course,names asc;

-- to verify age of students from every corner of list
select age,count(age),course,section from marks group by age,section,course order by course,age,section  asc ;

-- THANK YOU --