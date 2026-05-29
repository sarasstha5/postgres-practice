--use thie where one only at a time
select * from student
where address LIKE '%a'; -- name that ends with "a"
where address LIKE 'a%'; -- name that starts with 'a' and after that anything 
where address LIKE '_a%'; -- address that start with any character and second position is a
where address LIKE 'a__'; -- first character is 'a' and their is other 2 character only 
