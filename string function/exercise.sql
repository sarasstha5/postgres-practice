--1. make like this 1:raj:sharma:nepal
--student(id,fname,lname,address,gmamil,country)
select concat_ws(':',id,fname,lname,country) from student;

--2. make likee this 1:raj sharma:nepal
select CONCAT_WS(':',id,CONCAT_WS(' ',fname,lname),county) from student;
