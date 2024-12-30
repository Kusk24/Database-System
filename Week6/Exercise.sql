select distinct customer_name
from depositor D join account A
on A.account_number = D.account_number
where branch_name = 'Perryridge'

select * from depositor D join account A on D.account_number = A.account_number
join customer C on D.customer_name = C.customer_name

create view v1 as 
select D.* 
from depositor D join account A on D.account_number = A.account_number

select * from v1

