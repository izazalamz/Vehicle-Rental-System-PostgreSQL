-- Vehicle Rental System - SQL Queries
-- =================================
-- Schema tables: users, vehicles, bookings

-- Query 1: JOIN
-- Retrieve booking information along with customer name and vehicle name.
select
  b.booking_id,
  u.name as customer_name,
  v.name as vehicle_name,
  b.start_date,
  b.end_date,
  b.booking_status
from bookings as b
inner join users as u using (user_id)
inner join vehicles as v using (vehicle_id);

-- Query 2: NOT EXISTS
-- Find all vehicles that have never been booked.
select
  *
from vehicles v
where not exists (
  select 1
  from bookings b
  where b.vehicle_id = v.vehicle_id
);

-- Query 3: WHERE
-- Retrieve all available vehicles of a specific type (cars).
select
  *
from vehicles
where type = 'car'
  and status = 'available';

-- Query 4: GROUP BY + HAVING
-- Total bookings per vehicle; show only vehicles with more than 2 bookings.
select
  v.name as vehicle_name,
  count(*) as total_bookings
from vehicles as v
inner join bookings as b using (vehicle_id)
group by v.name
having count(*) > 2;
