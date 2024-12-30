select branch_name
from account 
group by branch_name;

--OR 

select distinct branch_name
from account

----------

select branch_name
from account
where balance > 500
group by branch_name

--OR

select distinct branch_name
from account
where balance>500