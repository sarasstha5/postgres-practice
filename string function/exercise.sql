--1. make like this 1:raj:sharma:nepal
--student(id,fname,lname,address,gmamil,country)
select concat_ws(':',id,fname,lname,country) from student;

--2. make likee this 1:raj sharma:nepal
select CONCAT_WS(':',id,CONCAT_WS(' ',fname,lname),county) from student;

--3. saras:RATUWA
select CONCAT_WS(':',fname,UPPER(address))from student
where id = 1;

--4. N1 saras
     U8 john
select CONCAT_WS('',substr(county,1,1),CONCAT_WS(' ',id,fname)) from student
where id = 1 OR id = 8;
