create or replace function calculate_bonus(num int)
returns Table(
id int,
name varchar,
dept varchar,
salary numeric
)
LANGUAGE plpgsql
as $$
begin
   return query
   select d.id,d.name,d.dept,d.salary
   from detail d
   where d.id = num;
end ;
$$ ;

--calling function
select * from calculate_bonus(1);
