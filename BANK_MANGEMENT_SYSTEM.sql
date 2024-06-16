CREATE DATABASE BANK_MANGEMENT_SYSTEM;
USE BANK_MANGEMENT_SYSTEM;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(20) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    JoinDate DATE NOT NULL
);

CREATE TABLE Accounts (
    AccountNumber INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    AccountType VARCHAR(50) NOT NULL,
    Balance DECIMAL(18,2) NOT NULL,
    OpenDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountNumber INT NOT NULL,
    TransactionType VARCHAR(50) NOT NULL,
    Amount DECIMAL(18,2) NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (AccountNumber) REFERENCES Accounts(AccountNumber)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    LoanType VARCHAR(50) NOT NULL,
    Amount DECIMAL(18,2) NOT NULL,
    InterestRate DECIMAL(18,2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, City, State, ZipCode, Country, JoinDate)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '555-555-5555', '123 Main St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-01'),
       (2, 'Jane', 'Doe', 'janedoe@example.com', '555-555-5556', '456 Park Ave', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-02'),
       (3, 'Bob', 'Smith', 'bobsmith@example.com', '555-555-5557', '789 Elm St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-03'),
       (4, 'Samantha', 'Johnson', 'samanthaj@example.com', '555-555-5558', '321 Oak St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-04'),
       (5, 'Michael', 'Williams', 'michaelw@example.com', '555-555-5559', '654 Pine St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-05'),
	   (6, 'Emily', 'Jones', 'emilyj@example.com', '555-555-5560', '999 River St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-06'),
       (7, 'Jacob', 'Brown', 'jacobb@example.com', '555-555-5561', '111 Mountain St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-07'),
       (8, 'Michael', 'Davis', 'michaeld@example.com', '555-555-5562', '222 Hill St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-08'),
       (9, 'Emily', 'Miller', 'emilym@example.com', '555-555-5563', '333 Valley St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-09'),
       (10, 'Jacob', 'Moore', 'jacobm@example.com', '555-555-5564', '444 Beach St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-10'),
	   (11, 'Jessica', 'Taylor', 'jessicat@example.com', '555-555-5565', '555 Lake St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-11'),
       (12, 'Ashley', 'Anderson', 'ashleya@example.com', '555-555-5566', '666 Forest St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-12'),
       (13, 'David', 'Thomas', 'davidt@example.com', '555-555-5567', '777 Ocean St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-13'),
       (14, 'Joshua', 'Moore', 'joshuam@example.com', '555-555-5568', '888 River St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-14'),
       (15, 'Daniel', 'Jackson', 'danielj@example.com', '555-555-5569', '999 Hill St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-15'),
       (16, 'Matthew', 'White', 'mattheww@example.com', '555-555-5570', '111 Mountain St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-16'),
       (17, 'Lauren', 'Harris', 'laurenh@example.com', '555-555-5571', '222 Valley St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-17'),
	   (18, 'Andrew', 'Martin', 'andrewm@example.com', '555-555-5577', 'Novigrade', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-17'),
	   (19, 'John', 'Green', 'johng@example.com', '555-555-5572', '333 Beach St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-19'),
       (20, 'Emily', 'Red', 'emilyr@example.com', '555-555-5573', '444 Ocean St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-20'),
       (21, 'Jacob', 'Yellow', 'jacoby@example.com', '555-555-5574', '555 Forest St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-21'),
       (22, 'Michael', 'White', 'michaelw1@example.com', '555-555-5575', '666 River St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-22'),
       (23, 'Emily', 'Black', 'emilyb@example.com', '555-555-5576', '777 Hill St', 'Anytown', 'Anystate', '12345', 'USA', '2022-01-23');


INSERT INTO Accounts (AccountNumber, CustomerID, AccountType, Balance, OpenDate)
VALUES (101, 1, 'Checking', 1000.00, '2022-01-01'),
       (102, 2, 'Savings', 2000.00, '2022-01-02'),
       (103, 3, 'Checking', 3000.00, '2022-01-03'),
       (104, 4, 'Savings', 4000.00, '2022-01-04'),
       (105, 5, 'Checking', 5000.00, '2022-01-05'),
	   (106, 6, 'Checking', 6000.00, '2022-01-06'),
       (107, 7, 'Savings', 7000.00, '2022-01-07'),
       (108, 8, 'Checking', 8000.00, '2022-01-08'),
       (109, 9, 'Savings', 9000.00, '2022-01-09'),
       (110, 10, 'Checking', 10000.00, '2022-01-10'),
	   (111, 19, 'Checking', 11000.00, '2022-01-19'),
       (112, 20, 'Savings', 12000.00, '2022-01-20'),
       (113, 21, 'Checking', 13000.00, '2022-01-21'),
       (114, 22, 'Savings', 14000.00, '2022-01-22'),
       (115, 23, 'Checking', 15000.00, '2022-01-23');


INSERT INTO Transactions (TransactionID, AccountNumber, TransactionType, Amount, TransactionDate)
VALUES (1, 101, 'Deposit', 100.00, '2022-01-01'),
       (2, 101, 'Withdrawal', 50.00, '2022-01-02'),
       (3, 102, 'Deposit', 200.00, '2022-01-03'),
       (4, 102, 'Withdrawal', 100.00, '2022-01-04'),
       (5, 103, 'Deposit', 300.00, '2022-01-05'),
	   (6, 106, 'Deposit', 600.00, '2022-01-06'),
       (7, 106, 'Withdrawal', 300.00, '2022-01-07'),
       (8, 107, 'Deposit', 700.00, '2022-01-08'),
       (9, 107, 'Withdrawal', 350.00, '2022-01-09'),
       (10, 108, 'Deposit', 800.00, '2022-01-10'),
	   (11, 111, 'Deposit', 1100.00, '2022-01-19'),
       (12, 111, 'Withdrawal', 550.00, '2022-01-20'),
       (13, 112, 'Deposit', 1200.00, '2022-01-21'),
	   (14, 113, 'Deposit', 1300.00, '2022-01-22'),
       (15, 113, 'Withdrawal', 650.00, '2022-01-23'),
       (16, 114, 'Deposit', 1400.00, '2022-01-24'),
       (17, 114, 'Withdrawal', 700.00, '2022-01-25'),
       (18, 115, 'Deposit', 1500.00, '2022-01-26');

INSERT INTO Loans (LoanID, CustomerID, LoanType, Amount, InterestRate, StartDate, EndDate)
VALUES (1, 1, 'Mortgage', 100000.00, 0.05, '2022-01-01', '2032-01-01'),
       (2, 2, 'Personal', 20000.00, 0.10, '2022-01-02', '2024-01-02'),
       (3, 3, 'Car', 30000.00, 0.08, '2022-01-03', '2025-01-03'),
       (4, 4, 'Education', 40000.00, 0.06, '2022-01-04', '2027-01-04'),
       (5, 5, 'Home Improvement', 50000.00, 0.07, '2022-01-05', '2030-01-05'),
	   (6, 19, 'Personal', 19000.00, 0.09, '2022-01-19', '2024-01-19'),
       (7, 20, 'Car', 20000.00, 0.08, '2022-01-20', '2025-01-20'),
       (8, 21, 'Education', 21000.00, 0.07, '2022-01-21', '2027-01-21'),
       (9, 22, 'Home Improvement', 22000.00, 0.06, '2022-01-22', '2030-03-31'),
	   (10, 23, 'Mortgage', 23000.00, 0.05, '2022-01-23', '2032-01-23'),
       (11, 17, 'Personal', 24000.00, 0.10, '2022-01-24', '2024-01-24'),
       (12, 18, 'Car', 25000.00, 0.08, '2022-01-25', '2025-01-25'),
       (13, 7, 'Education', 26000.00, 0.06, '2022-01-26', '2027-01-26'),
       (14, 8, 'Home Improvement', 27000.00, 0.07, '2022-01-27', '2030-01-27');

SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Transactions;
SELECT * FROM Loans;
