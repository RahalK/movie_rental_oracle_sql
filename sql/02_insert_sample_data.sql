-- ============================
-- INSERT SAMPLE DATA: CUSTOMERS
-- ============================
-- Adding 3 customers with basic profile information.
INSERT INTO customers VALUES (1,'John','Doe','john@example.com',DATE '2022-01-15',1);
INSERT INTO customers VALUES (2,'Jane','Smith','jane@example.com',DATE '2021-03-10',1);
INSERT INTO customers VALUES (3,'Alice','Brown','alice@example.com',DATE '2022-06-20',1);


-- ============================
-- INSERT SAMPLE DATA: MOVIES
-- ============================
-- Adding 5 movies with title, genre, release year and daily rental rate.
INSERT INTO movies VALUES (1,'Inception','Sci-Fi',2010,3.50);
INSERT INTO movies VALUES (2,'Titanic','Romance',1997,2.50);
INSERT INTO movies VALUES (3,'Avengers','Action',2012,4.00);
INSERT INTO movies VALUES (4,'The Godfather','Crime',1972,3.00);
INSERT INTO movies VALUES (5,'Frozen','Animation',2013,2.50);


-- ============================
-- INSERT SAMPLE DATA: RENTALS
-- ============================
-- Each row represents a movie rented by a customer with start and return dates.
INSERT INTO rentals VALUES (1,1,1,DATE '2023-01-05',DATE '2023-01-07');
INSERT INTO rentals VALUES (2,1,2,DATE '2023-02-10',DATE '2023-02-12');
INSERT INTO rentals VALUES (3,2,3,DATE '2023-01-20',DATE '2023-01-23');
INSERT INTO rentals VALUES (4,3,5,DATE '2023-03-15',DATE '2023-03-17');


-- ============================
-- INSERT SAMPLE DATA: PAYMENTS
-- ============================
-- Each payment corresponds to a rental and records the total amount paid.
INSERT INTO payments VALUES (1,1,7.00,DATE '2023-01-07');
INSERT INTO payments VALUES (2,2,5.00,DATE '2023-02-12');
INSERT INTO payments VALUES (3,3,12.00,DATE '2023-01-23');
INSERT INTO payments VALUES (4,4,5.00,DATE '2023-03-17');
