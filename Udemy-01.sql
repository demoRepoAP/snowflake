select customer_id,
rental_id
from rental
where return_date is null;

select count(customer_id)
from rental
where return_date is null;


select payment_id,
amount
from payment where amount <=2
order by amount desc



select * from 
payment
where customer_id in (322, 346, 354)
and (amount < 2 or amount >10)
order by customer_id, amount desc

select * from payment


select count(payment_id)
from payment
where amount between'1.99'and '3.99'
and  payment_date between '2020-01-26' and '2020-01-27'





select count(*) 
from payment
where customer_id in (12,25,67,93,124,234)
and amount in (4.99,7.99,9.99)
and payment_date between '2020-01-01' and '2020-02-01'



select * from film

select count(film_id)
from film
where description like '%Documentary%'


select count(customer_id)
from customer
where length(first_name)= 3
and (last_name like '%X' or  last_name like '%Y')


select * from film

select count(film_id) as no_of_movies
from film
where description like '%Saga%'
and (title like 'A%' or title like '%R')


select * from customer

select * 
from customer
where (first_name like '%ER%' and first_name like '%_A')
order by last_name desc


select * from payment


select count(payment_id)
from payment
where (amount = 0 
	   or amount between 3.99 and  7.99)
and payment_date between '2020-05-01' and '2020-05-02'




select
min(replacement_cost)  as min_cost,
max(replacement_cost)  as max_cost,
sum(replacement_cost)  as total_cost,
round(avg(replacement_cost),2)  as average_cost
from film

select * from payment


select staff_id,
		sum(amount) as total_amount
from payment
where amount !=0
group by staff_id  
order by total_amount desc


select * from payment

select staff_id, 
Date(payment_date) as date,
sum(amount) as total_amount,
count(*)
from payment
group by staff_id, date
order by total_amount desc, count(*) desc
limit 2


select * from payment


select customer_id,
	round(avg(amount),2) as avg_payment,
	Date(payment_date) as date,
	count(*)
from payment
where 
	Date(payment_date) in ('2020-04-28','2020-04-29','2020-04-30') 
group by customer_id, Date(payment_date)
having count(*) >1
order by avg_payment desc









