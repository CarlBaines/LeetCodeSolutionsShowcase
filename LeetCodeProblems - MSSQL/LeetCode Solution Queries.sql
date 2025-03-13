USE LeetCodeDemo;
GO

--Customer Who Visited but Did Not Make Any Transactions
--Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
--Return the result table sorted in any order.
SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;

--*
--Not Boring Movies
--Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
--Return the result table ordered by rating in descending order.
SELECT id, movie, description, rating
FROM Cinema
WHERE (id % 2) <> 0 AND description != 'boring'
ORDER BY rating DESC;

--*
--Rising Temperature
--Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
--Return the result table in any order.
SELECT w.id
FROM Weather AS w
LEFT JOIN Weather AS w2
ON DATEDIFF(w.recordDate, w2.recordDate) = 1
WHERE w.temperature > w2.temperature;

--*
--Product Sales Analysis I
--Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
--Return the resulting table in any order.
SELECT p.product_name, s.year, s.price
FROM Sales AS s
LEFT JOIN Products as p
ON s.product_id = p.product_id;

--*
--Replace Employee ID With The Unique Identifier
--Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
--Return the result table in any order.
SELECT eu.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
ON e.id = eu.id;

--*
--Invalid Tweets
--Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
--Return the result table in any order.
SELECT tweet_id 
FROM Tweets
WHERE LEN(content) > 15;

--*
--Article Views I
--Write a solution to find all the authors that viewed at least one of their own articles.
--Return the result table sorted by id in ascending order.
SELECT DISTINCT author_id AS id 
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC

--Big Countries
--A country is big if:
--it has an area of at least three million (i.e., 3000000 km2), or
--it has a population of at least twenty-five million (i.e., 25000000).
--Write a solution to find the name, population, and area of the big countries.
--Return the result table in any order.
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;