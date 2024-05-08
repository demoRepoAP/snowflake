select * from payment

select sum(amount),
to_char(payment_date, 'Dy, DD/MM/YYY') as day
from payment
group by day
order by sum(amount) desc

select sum(amount),
to_char(payment_date, 'Mon, YYYY') as day
from payment
group by day
order by sum(amount) desc

select sum(amount),
to_char(payment_date, 'Dy, HH:MI') as day
from payment
group by day
order by sum(amount) desc



select * from rental

select customer_id,
avg(return_date-rental_date) as duration
from rental
group by customer_id
order by duration desc

select film_id,
rental_rate,
replacement_cost
from film












