-- Q1. Who is the senior most employee based on job title?
select * from employee order by levels desc limit 1;

-- Q2. Which countries have the most Invoices?
select billing_country,COUNT(invoice_id) from invoice group by billing_country order by count(invoice_id) desc;

-- Q3.  What are top 3 values of total invoice?
select * from invoice order by total desc limit  3;

-- Q4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city that has the highest sum of invoice totals. Return both the city name & sum of all invoice totals.
select billing_country, sum(total) as total from invoice group by billing_country order by total desc limit 1;

-- Q5. Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.
select c.first_name,c.last_name,sum(i.total) as total from customer c join invoice i on c.customer_id =  i.customer_id group by 1,2 order by total desc limit 1;

-- Q6. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically by email starting with A 
select distinct(c.last_name),c.first_name,c.email from customer c 
join invoice i on c.customer_id = i.customer_id 
join invoice_line il on i.invoice_id = il.invoice_id 
where track_id in (SELECT track_id FROM track
		   JOIN genre ON genre.genre_id = track.genre_id
		   WHERE genre.name LIKE 'Rock')
order by c.email;

-- Q7. Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands 
select a.name,count(t.track_id) as total_count from artist a 
join album al on a.ArtistID = al.Artist_ID
join track t on al.album_id = t.album_id
WHERE genre_id 
	IN (SELECT genre_id 
	    FROM genre
	    WHERE name LIKE 'Rock')
group by a.name
order by total_count desc
limit 10;

--  Q8. Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first
SELECT name,milliseconds from track where milliseconds > (select avg(milliseconds) from track) ORDER BY milliseconds DESC;

--  Q9. Find how much amount spent by each customer on artists? Write a query to return customer name, artist name and total spent.
select c.customer_id,c.first_name as customer_name,ar.name,sum(i.total) as total_spent
from Customer c join invoice i on c.customer_id = i.customer_id
join invoice_line il on i.invoice_id = il.invoice_id
join track t on t.track_id = il.track_id
join Album a on t.album_id = a.album_id
join artist ar on ar.ArtistID = a.Artist_ID
group by 1,2,3
order by total_spent desc;

-- Q10. We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum number of purchases is shared return all Genres.
select country_name,genre_name,total_quantity from (select c.country as country_name,g.name as genre_name,sum(il.Quantity) as Total_Quantity ,rank() over(partition by c.country order by sum(il.Quantity)) as rnk 
from customer c join invoice i on c.customer_id = i.customer_id
join invoice_line il on il.invoice_id = i.invoice_id
join track t on il.track_id = t.track_id
join genre g on t.genre_id= g.genre_id
group by  1,2
order by c.country) as abc where rnk = 1;

--  Q11. Write a query that determines the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount.	
SELECT customer_id,first_name,last_name,billing_country, total_spent
FROM (SELECT c.customer_id,c.first_name, c.last_name, i.billing_country, SUM(i.total) AS total_spent,
	ROW_NUMBER() OVER(PARTITION BY i.billing_country ORDER BY SUM(i.total) DESC) AS row_num
	FROM invoice i
	JOIN customer c ON c.customer_id = i.customer_id
	GROUP BY 1,2,3,4
	ORDER BY 4, 5 DESC) as abc
WHERE row_num = 1;

--  Q12. Who are the most popular artists?
SELECT COUNT(invoice_line.quantity) AS purchases, artist.name AS artist_name
FROM invoice_line 
JOIN track ON track.track_id = invoice_line.track_id
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artistid = album.artist_id
GROUP BY 2
ORDER BY 1 DESC;

--  Q13. Which is the most popular song?
SELECT COUNT(invoice_line.quantity) AS purchases, track.name AS song_name
FROM invoice_line 
JOIN track ON track.track_id = invoice_line.track_id
GROUP BY 2
ORDER BY 1 DESC;

--  Q14. What are the average prices of different types of music?
SELECT genre, ROUND(AVG(total_spent)) AS total_spent
FROM (SELECT genre.name AS genre, SUM(total) AS total_spent
	FROM invoice
	JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
	JOIN track ON track.track_id = invoice_line.track_id
	JOIN genre ON genre.genre_id = track.genre_id
	GROUP BY 1
	ORDER BY 2) as abc
GROUP BY genre;

--  Q15. What are the most popular countries for music purchases?
SELECT COUNT(invoice_line.quantity) AS purchases, customer.country
FROM invoice_line 
JOIN invoice ON invoice.invoice_id = invoice_line.invoice_id
JOIN customer ON customer.customer_id = invoice.customer_id
GROUP BY country
ORDER BY purchases DESC;




