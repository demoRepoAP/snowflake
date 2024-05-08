select t.ticket_no, t.passenger_name, f.flight_id, f.scheduled_departure
from tickets t
left join boarding_passes b
on t.ticket_no = b.ticket_no
left join flights f
on b.flight_id = f.flight_id


select t.passenger_name, sum(total_amount) as max_amount,count(*) as total_count, tf.fare_conditions
from tickets t
left join bookings b
on t.book_ref = b.book_ref
right join ticket_flights tf
on t.ticket_no = tf.ticket_no
group by t.passenger_name, tf.fare_conditions
order by max_amount desc
limit 1

















