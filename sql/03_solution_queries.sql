---------------------------------------------------------------
-- Oracle SQL Challenge: Movie Rental Analysis
-- This script contains 5 advanced queries to analyze rental trends,
-- top customers, movie popularity, revenue trends, and genre preferences.
---------------------------------------------------------------

---------------------------------------------------------------
-- QUERY 1: Top 5 Customers by Total Spending
---------------------------------------------------------------
SELECT c.customer_id, 
       c.first_name, 
       c.last_name, 
       SUM(p.amount) AS total_spent
FROM customers c
JOIN rentals r ON c.customer_id = r.customer_id
JOIN payments p ON r.rental_id = p.rental_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
FETCH FIRST 5 ROWS ONLY;

---------------------------------------------------------------
-- QUERY 2: Most Popular Movies by Genre (Past Year)
---------------------------------------------------------------
SELECT genre, title, rental_count
FROM (
    SELECT m.genre, 
           m.title, 
           COUNT(r.rental_id) AS rental_count,
           RANK() OVER (PARTITION BY m.genre ORDER BY COUNT(r.rental_id) DESC) AS genre_rank
    FROM rentals r
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE r.rental_date >= ADD_MONTHS(SYSDATE, -12)
    GROUP BY m.genre, m.title
)
WHERE genre_rank = 1;

---------------------------------------------------------------
-- QUERY 3: Average Rental Duration by Movie
---------------------------------------------------------------
SELECT m.movie_id, 
       m.title, 
       AVG(r.return_date - r.rental_date) AS avg_days_rented
FROM rentals r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.movie_id, m.title
ORDER BY avg_days_rented DESC;

---------------------------------------------------------------
-- QUERY 4: Monthly Revenue Trends
---------------------------------------------------------------
SELECT TO_CHAR(p.payment_date,'YYYY-MM') AS month, 
       SUM(p.amount) AS monthly_revenue
FROM payments p
GROUP BY TO_CHAR(p.payment_date,'YYYY-MM')
ORDER BY month;

---------------------------------------------------------------
-- QUERY 5: Customers with Most Frequent Rentals of a Single Genre
---------------------------------------------------------------
WITH genre_count AS (
    SELECT c.customer_id, 
           c.first_name, 
           c.last_name, 
           m.genre, 
           COUNT(*) AS cnt,
           ROW_NUMBER() OVER (PARTITION BY c.customer_id ORDER BY COUNT(*) DESC) AS rn
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    GROUP BY c.customer_id, c.first_name, c.last_name, m.genre
)
SELECT customer_id, first_name, last_name, genre, cnt
FROM genre_count
WHERE rn = 1
ORDER BY cnt DESC;
