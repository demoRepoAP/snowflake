select * 
from payment
where amount > (
				select round(avg(amount),2) as avg_amount
				from payment )
				
				
select * from customer where first_name='ADAM'	

select payment_id, customer_id, amount 
from payment
where customer_id =  (select customer_id from customer where first_name='ADAM')


select p.payment_id, c.customer_id, p.amount 
from payment p
left join customer c
on c.customer_id = p.customer_id
where c.first_name='ADAM'


select film_id, title from film
where length > (select avg(length) from film)


select * from film 
where film_id in 
	(   select film_id from inventory 
	 	where store_id = 2 
		group by film_id
		having count(film_id)> 3
	)

select count(film_id) from inventory 
group by film_id
having count(film_id)> 3

select * from payment

select c.customer_id, c.first_name, c.last_name from customer c
left join payment p
on c.customer_id = p.customer_id
where DATE(payment_date) = '2020-01-25'
order by c.customer_id


select customer_id, first_name, last_name from customer
where customer_id in 
(select customer_id from payment
where DATE(payment_date) = '2020-01-25')








select c.customer_id, c.first_name, c.email, sum(amount)  from customer c
left join payment p
on c.customer_id = p.customer_id
group by c.customer_id 
having sum(amount) > 30
order by customer_id

select * from customer
select * from address

select first_name, last_name, email
from customer 
where address_id in (select address_id from address where district = 'California') 
and  customer_id in (select customer_id from payment group by customer_id having sum(amount)>100)

select round(avg(total_amount),2) from
	(select sum(amount) as total_amount, date(payment_date)
	from payment
	group by date(payment_date)) as alias








	
