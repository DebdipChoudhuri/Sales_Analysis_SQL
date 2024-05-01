-- Q4: Which city has the best customers? We would like to throw a promotional music festival int the
-- city we made the most money.Write a query that returns one city that has the highest sum of invoice
-- total.Return both the city name and sum of all invoice total.

select SUM(total) as s,billing_city 
from invoice
group by billing_city
order by s desc
limit 1