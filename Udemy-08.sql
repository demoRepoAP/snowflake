select * from address
where address2 is null


select first_name,
last_name,
phone,
district
from customer c
left join address a
on c.address_id = a.address_id
where district = 'Texas'

select a.address_id, address
from address a
left join customer c
on a.address_id = c.address_id
where c.customer_id is null





select c.first_name, c.last_name, c.email, co.country
from customer c
left join address a
on c.address_id = a.address_id
left join city ci
on a.city_id = ci.city_id
left join country co
on ci.country_id= co.country_id
where co.country = 'Brazil'



select email as MAIL  from customer











