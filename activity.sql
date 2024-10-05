CREATE TABLE IF NOT EXISTS Student(
    roll_number INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT,
    phone TEXT,
    age INTEGER
)

INSERT INTO Student (roll_number, name, address, phone, age) VALUES (1, "Ram", "Delhi", "-", 18),
    (2, "Ramesh", "Gurgaon", "-", 18),
    (3, "Sujit", "Rohtak", "-", 28),
    (4, "Suresh", "Delhi", "-", 19),
    (5, "Aman", "Rohtak", "-", 28),
    (6, "Ram", "Gurgaon", "-", 17)

SELECT * FROM Student
SELECT * FROM Student WHERE age = 18 AND address = "Delhi"
SELECT * FROM Student WHERE name = "Ram" AND age = 18
SELECT * FROM Student WHERE name = "Ram" OR age = 20
SELECT * FROM Student WHERE age = 18 AND (name = "Ram" OR name = "Ramesh")

CREATE TABLE Products(
    s_no INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price INTEGER
)

INSERT INTO Products (name, price) VALUES 
    ("TV", 100000),
    ("Book", 50),
    ("Headphones", 7000),
    ("Pens", 10),
    ("Monitor", 1000),
    ("GPU", 7000),
    ("Keyboard", 5000),
    ("Mouse", 500)

SELECT * FROM Products WHERE price = (SELECT MIN(price) FROM Products)
SELECT * FROM Products WHERE price = (SELECT MAX(price) FROM Products)