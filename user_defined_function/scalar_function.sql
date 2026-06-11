--returns single value
create or replace function calculate_bonus(salary numeric)
returns numeric
LANGUAGE plpgsql
as $$
begin
  --function block
   return salary * 0.1 ; 
end ;
$$ ;
--calling the function
select calculate_bonus(30000);
