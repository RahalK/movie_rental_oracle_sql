![oracle_movie_rental_image](https://github.com/RahalK/movie_rental_oracle_sql/assets/149255583/e22d9f05-b9ac-4908-b8d0-9ad76a1e0b89)


# Movie Rental Analysis SQL Challenge

## Table of Contents
- [Overview](#overview)  
- [Objective](#objective)  
- [Data](#data)  
- [Approach](#approach)  
- [Skills](#skills)  
- [Technical Tools](#technical-tools)  



## Overview
This project contains an **Oracle SQL challenge** based on a movie rental system. The goal is to analyze rental trends, customer behavior, and top-performing movies using complex SQL queries including window functions, analytic functions, and CTEs.



## Objective
Write SQL queries that:

1. Identify top customers by total spending.  
2. Find the most popular movies per genre in the past year.  
3. Calculate average rental duration for each movie.  
4. Analyze monthly revenue trends.  
5. Determine customers with the most frequent rentals of a single genre.  



## Data
The database contains four tables:

1. **Customers** – Customer information including name, email, join date, and activity status.  
2. **Movies** – Movie details including title, genre, release year, and rental rate.  
3. **Rentals** – Tracks which customer rented which movie and the rental/return dates.  
4. **Payments** – Payment information associated with rentals.

Sample datasets are included as SQL INSERT statements.



## Approach
- Use **JOINs** to combine tables for analysis.  
- Apply **window functions** (`RANK()`, `ROW_NUMBER()`) for ranking results.  
- Use **CTEs** to organize intermediate calculations.  
- Implement advanced filtering and aggregation to get insights like top customers, popular movies, and revenue trends.



## Skills
This challenge demonstrates:

- Advanced SQL query writing  
- Use of **analytic/window functions**  
- **CTEs** and subqueries  
- Aggregation and ranking logic  
- Data analysis in a real-world scenario  



## Technical Tools
- **Oracle SQL** (any recent version)   
- GitHub for project organization and version control  

