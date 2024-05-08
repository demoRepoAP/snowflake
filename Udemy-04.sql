select
sum(amount),
extract(month from payment_date) as month
from payment
group by month
order by sum(amount) desc

select * from payment

select
sum(amount) as total_amount,
customer_id,
extract(week from payment_date) as week
from payment
group by week, customer_id
order by sum(amount) desc

select
sum(amount) as total_amount,
extract(dow from payment_date) as day
from payment
group by day
order by sum(amount) desc








