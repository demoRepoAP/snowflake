select * from flights


select flight_id,
case
	when actual_departure-scheduled_departure < '00:05' then 'On-Time'
	when actual_departure-scheduled_departure > '00:05' then 'Delayed'
	when actual_departure-scheduled_departure is null then 'no departure time'
	else 'flight cancelled'
end
from flights


select count(flight_id),
case
	when actual_departure-scheduled_departure < '00:05' then 'On-Time'
	when actual_departure-scheduled_departure > '00:05' then 'Delayed'
	when actual_departure-scheduled_departure is null then 'no departure time'
	else 'flight cancelled'
end as is_late
from flights
group by is_late



select * from bookings


select count(book_ref),
case
	when total_amount < 20000 then 'Low Price Ticket'
	when total_amount > 20000 and total_amount <150000  then 'Mid price ticket'        
	when total_amount >=150000 then 'High price ticket'
	else 'No-Booking'
end as booking_costs
from bookings
group by booking_costs
order by count(book_ref) desc



select * from flights

select count(flight_id),
case
	WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
	WHEN EXTRACT (month from scheduled_departure) in(3,4,5) THEN 'Spring'
	WHEN EXTRACT (month from scheduled_departure) in(6,7,8) THEN 'Summer'
	ELSE 'Fall' 
end as season
from flights
group by season








select * from flights


select flight_id,
cast(replace(flight_no,'PG','FL') as varchar)
from flights

select flight_id,
cast(replace(flight_no,'PG','') as bigint)
from flights

select * from seats


select count(*), fare_conditions
from seats as se
inner join boarding_passes as bp
on se.seat_no = bp.seat_no
group by  fare_conditions
order by count(*)




select t.ticket_no, 
t.book_ref from tickets t
full outer join boarding_passes b
on t.ticket_no = b.ticket_no
where boarding_no is null


select aircrafts_data.aircraft_code, model from aircrafts_data
left join flights
on aircrafts_data.aircraft_code = flights.aircraft_code
where flights.aircraft_code is null


select count(flight_id), seats.seat_no from  seats
left join boarding_passes
on boarding_passes.seat_no = seats.seat_no 
group by seats.seat_no
order by count(flight_id) desc





















