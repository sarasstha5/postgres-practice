--seperate first name and last name with space. you can use any other seperator like column
--select CONCAT_WS(' ',fname,lname) from student;
select CONCAT_WS(':',fname,lname) from student;
