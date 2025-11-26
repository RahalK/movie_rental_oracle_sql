-- ================================================
-- 01_create_tables.sql
-- SQL Challenge – Movie Rental Database
-- This script creates all tables with primary keys,
-- foreign keys, data types, and constraints.
-- ================================================


-- ======================
-- TABLE: customers
-- Stores basic customer information.
-- ======================
CREATE TABLE customers (
    customer_id      INT PRIMARY KEY,
    first_name       VARCHAR(50),
    last_name        VARCHAR(50),
    email            VARCHAR(100),
    signup_date      DATE,
    is_active        BOOLEAN
);


-- ======================
-- TABLE: movies
-- Stores movie catalog with pricing information.
-- ======================
CREATE TABLE movies (
    movie_id         INT PRIMARY KEY,
    title            VARCHAR(100),
    genre            VARCHAR(50),
    release_year     INT,
    daily_rental_rate DECIMAL(5,2)
);


-- ======================
-- TABLE: rentals
-- Records which customer rented which movie
-- along with rental and return dates.
-- ======================
CREATE TABLE rentals (
    rental_id        INT PRIMARY KEY,
    customer_id      INT,
    movie_id         INT,
    rental_date      DATE,
    return_date      DATE,
    
    -- Foreign key relationships
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);


-- ======================
-- TABLE: payments
-- Stores payments for each rental.
-- ======================
CREATE TABLE payments (
    payment_id       INT PRIMARY KEY,
    rental_id        INT,
    amount           DECIMAL(6,2),
    payment_date     DATE,

    -- Foreign key linking payment to rental
    FOREIGN KEY (rental_id) REFERENCES rentals(rental_id)
);
