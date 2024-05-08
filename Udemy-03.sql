

select lower(first_name),
	lower(last_name),
	lower(email)
from customer
where (length(first_name)>10 or length(last_name)>10)

select first_name,
	left(first_name,2),
	right(first_name,2)
from customer



select * from customer

select lower(email),
right(left(right(email,5),2),1)
from customer


select lower(email),
left(right(email,4),1)
from customer

select lower(email)
substring(email,)
from customer


select * from customer


select lower(first_name)||' '||lower(last_name) as full_name from customer

select email,
left(email,1)||'***'||right(email,19)
from customer


select last_name,
email,
position('.' in email)
from customer

select last_name,
left(email,position('.' in (left(email,position('@' in email)-1)))-1)||','||last_name as fullname
from customer

select last_name,
email,
left(email,position ('.' in email)-1)
from customer

select email,
substring(email from position('.' in email)+1 for length(last_name))
from customer

select email,
substring(email from position('.' in email)+1 for position('@'in email)-position('.'in email)-1)
from customer



select email,
	left(email,1)
	||'***'
	||substring(email from position('.' in email) for 2)
	||'***'
	||substring(email from position('@'in email))
from customer


SELECT
	'***'
	||SUBSTRING(email from POSITION('.' in email)-1 for 3)
	||'****'
	||SUBSTRING(email from POSITION('@' in email))
FROM customer

















