-- 1. Which destination in the flights database is the furthest distance away,
--  based on information in the flights table. 
select 
	origin,
	dest as `Destination`,
	max(distance) AS `Furthest Distance`

from 
	flights
group by 
	origin, dest 

order by max(distance) desc
limit 1 ;

----------------------------------------------------------------------------------------------

-- 2. What are the different numbers of engines in the planes table? 
-- For each number of engines, 

select 
distinct engines as `Different numbers of Engines`
from planes;


-- which aircraft have the most number of seats? 
select 
	tailnum
    ,max(seats) AS `Max Seats`
from planes
group by tailnum
order by `Max Seats` DESC
LIMIT 1
;

----------------------------------------------------------------------------------------------


-- 3. Show the total number of flights.

select count(*) from flights;

----------------------------------------------------------------------------------------------

-- 4. Show the total number of flights by airline (carrier).


select carrier,count(flight) as `Flights per Airline` from flights
group by carrier;
----------------------------------------------------------------------------------------------



-- 5. Show all of the airlines, ordered by number of flights in descending order.

select 
carrier,
count(flight) as `number of flights`
from flights
group by carrier
order by `number of flights` desc;
----------------------------------------------------------------------------------------------

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

select 
carrier,
count(flight) as `number of flights`
from flights
group by carrier
order by `number of flights` desc
limit 5;


---------------------------------------------------------------------------------------------------

-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of 
-- flights in descending order.

select 
carrier,
count(flight) as `number of flights`
from flights
where distance >= 1000
group by carrier
order by `number of flights` desc
limit 5;
---------------------------------------------------------------------------------------------------



-- 8. Create a question that 
	-- (a) uses data from the flights database, and 

	-- (b) requires aggregation to answer it, and 
	-- write down both the question, and the query that answers the question.

-- The question
-- (a)show the origin and the destination of the shortest 5 flights in the filghts table order by distance from shortest

-- (b)The query
select 
	origin,
	dest as `Destination`,
	min(distance) AS `Shortest Distance`
from 
	flights
group by 
	origin, dest 
order by min(distance) 
limit 5 ;






