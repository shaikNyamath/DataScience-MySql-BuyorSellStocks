# creating UDF by taking date as input and outputing Signal

#drop function if exists get_bajaj_signal;

DELIMITER $$
create function get_bajaj_signal
  (businessDate date)
  returns varchar(50) deterministic
begin
  Declare sig varchar(50);
  
  select bajaj2.`signal` into sig from bajaj2 where bajaj2.`date` = businessDate;
  return sig;
end $$
DELIMITER ;

select get_bajaj_signal('2015-03-16');
