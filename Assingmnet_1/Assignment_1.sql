--Identify the primary keys and foreign keys in maven movies db. Discuss the differences
SELECT  COLUMN_NAME,TABLE_NAME,CONSTRAINT_NAME FROM information_schema.key_column_usage ;

Primary Key:
A primary key generally focuses on the uniqueness of the table. It is a column or a set of columns that uniquely distinguishes every row in the database. It means it should not have any duplicate value. Also, it doesn’t contain a NULL value.

Foreign Key:
A foreign key is generally used to build a relationship between the two tables. The major purpose of the foreign key is to sustain data integrity between two separate instances of an entity. A foreign key is a field in the table that is the primary key in another table. It accepts multiple null values.


-- list details of actors
describe actor;

-- list customer information from DB
select * from customer;

-- list diffrent countries
select distinct country from country;

-- display all active customer
select * from customer where active =1;

-- list of all rental IDs for customer with ID1
select customer_id , rental_id from rental where customer_id =1;

-- Display all the films whose rental duration is greater than 5
select * from film where rental_duration > 5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) from film where replacement_cost >15 and replacement_cost<20;

-- Find the number of films whose rental rate is less than $1.
select count(film_id) from film where rental_rate < 1;

-- Display the count of unique first names of actors.
select count(distinct first_name) from actor ;

-- Display the first 10 records from the customer table
select * from customer limit 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like 'b%' limit 3;

-- Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating = 'G' limit 5;

-- Find all customers whose first name starts with "a".
select * from customer where first_name like 'a%';

-- Find all customers whose first name ends with "a".
select * from customer where first_name like '%a';

-- Display the list of first 4 cities which start and end with ‘a’
select city from city where city like 'a%a' limit 4;

-- Find all customers whose first name have "NI" in any position
select * from customer where first_name like '%NI%';

-- Find all customers whose first name have "r" in the second position
select * from customer where first_name like '_r%';

-- Find all customers whose first name starts with "a" and are at least 5 characters in length
select * from customer where first_name like 'a%' and length(first_name) >= 5;

-- Find all customers whose first name starts with "a" and ends with "o"
select * from customer where first_name like 'a%o';

-- Get the films with pg and pg-13 rating using IN operator
select * from film where rating IN ('PG', 'PG-13');

-- Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- Get the top 50 actors using limit operator
select * from actor limit 50;

-- Get the distinct film ids from inventory table.
select distinct film_id from inventory;