-- Create a new database
CREATE DATABASE LeetCodeDemo;
GO

-- Use the newly created database
USE LeetCodeDemo;
GO

-- Table for "Customer Who Visited but Did Not Make Any Transactions"
CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Visits (visit_id, customer_id) VALUES (1, 101), (2, 102), (3, 103), (4, 104);
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (1, 1, 50.00);

-- Table for "Managers with at Least 5 Direct Reports"
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name NVARCHAR(50),
    manager_id INT
);

-- Insert sample data
INSERT INTO Employees (employee_id, name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 1),
(5, 'Eve', 1),
(6, 'Frank', 1);

-- Table for "Not Boring Movies"
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title NVARCHAR(100),
    description NVARCHAR(255),
    rating FLOAT
);

-- Insert sample data
INSERT INTO Movies (movie_id, title, description, rating) VALUES
(1, 'Action Movie', 'An exciting action movie', 8.5),
(2, 'Comedy Movie', 'A funny comedy', 7.2);

-- Table for "Rising Temperature"
CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

-- Insert sample data
INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2023-01-01', 30),
(2, '2023-01-02', 35),
(3, '2023-01-03', 25);

-- Table for "Product Sales Analysis I"
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    quantity INT,
    price DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Sales (sale_id, product_id, sale_date, quantity, price) VALUES
(1, 101, '2023-02-01', 2, 20.00);

-- Table for "Replace Employee ID With The Unique Identifier"
CREATE TABLE EmployeesInfo (
    id INT PRIMARY KEY,
    unique_id INT,
    name NVARCHAR(50)
);

-- Insert sample data
INSERT INTO EmployeesInfo (id, unique_id, name) VALUES
(1, 5001, 'Alice'),
(2, 5002, 'Bob');

-- Table for "Article Views I"
CREATE TABLE Views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

-- Insert sample data
INSERT INTO Views (article_id, author_id, viewer_id, view_date) VALUES
(1, 201, 301, '2023-03-01'),
(2, 202, 302, '2023-03-02');

-- Table for "Big Countries"
CREATE TABLE World (
    name NVARCHAR(100),
    continent NVARCHAR(50),
    area INT,
    population BIGINT,
    gdp DECIMAL(15,2)
);

-- Insert sample data
INSERT INTO World (name, continent, area, population, gdp) VALUES
('USA', 'North America', 9833517, 331000000, 21433225.00);

-- Table for "Recyclable and Low Fat Products"
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(100),
    low_fats CHAR(1),
    recyclable CHAR(1)
);

-- Insert sample data
INSERT INTO Products (product_id, product_name, low_fats, recyclable) VALUES
(1, 'Milk', 'Y', 'Y'),
(2, 'Soda', 'N', 'Y');

-- Table for "Find Customer Referee"
CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    referee_id INT
);

-- Insert sample data
INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'John', NULL),
(2, 'Doe', 1);

-- Table for "Employees Earning More Than Their Managers"
CREATE TABLE Salary (
    employee_id INT PRIMARY KEY,
    name NVARCHAR(50),
    salary INT,
    manager_id INT
);

-- Insert sample data
INSERT INTO Salary (employee_id, name, salary, manager_id) VALUES
(1, 'Alice', 100000, NULL),
(2, 'Bob', 120000, 1);

-- Table for "Employee Bonus"
CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT
);

-- Insert sample data
INSERT INTO Bonus (empId, bonus) VALUES
(1, 5000),
(2, 7000);
