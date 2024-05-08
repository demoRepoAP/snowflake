select * from film

select title,
case
	when rating in ('PG','PG-13') or length > 210 then 'Great-Rating or Tier-1'
	when description like '%Drama%' and length > 90 then 'Long-Drama or Tier-2'
	when description like '%Drama%' or length <= 90 then 'Short-Drama or Tier-3'
	when rental_rate < 1.0 then 'Very-Cheap or Tier-4'
end as comments
from film
where CASE
WHEN rating IN ('PG','PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
WHEN description LIKE '%Drama%' AND length>90 THEN 'Long drama (tier 2)'
WHEN description LIKE '%Drama%' THEN 'Short drama (tier 3)'
WHEN rental_rate<1 THEN 'Very cheap (tier 4)'
END is not null






select rating,
sum(case
	when rating in ('PG','G') then 1
	else 0
end) as rating_count
from film
group by rating



select rating,
count(*) 
from film
group by rating







select rental_date,  
coalesce(cast(return_date as varchar) ,'00:00:00')
from rental
order by rental_date desc

select * from seats






