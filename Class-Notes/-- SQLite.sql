-- SQLite
PRAGMA foreign_keys = ON

CREATE TABLE Employees(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  First_name TEXT NOT NULL,
  Last_name TEXT NOT NULL,
  Age INTEGER,
  Email TEXT UNIQUE,
  Department_id INTEGER,
  FOREIGN KEY(Department_id) REFERENCES Department(Id)
);

CREATE TABLE Department(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT NOT NULL
)

INSERT INTO Department(Name)
VALUES
    ("Data Science"),
    ("Software"),
    ("Project Management")

INSERT OR IGNORE INTO Employees(First_name, Last_name, Age, Email, Department_id)
VALUES
    ("John","Chinaman", "50", "chinamanjohn@gmail.com", 1),
    ("Mark", "Bossman", "25", "bossmanmark@yahoo.com", 2),
    ("Mary", "Chaplin", "35", "chaplinmary@gmail.com", 3),
    ("Diana", "Nilote", "40", "nilotediana@yahoo.com", 1),
    ("Moses", "Darungo", "60", "darungomoses@yahoo.com", 1)

SELECT * FROM Employees

SELECT * FROM Department

-- Changing an employees department
UPDATE Employees
set Department_id = 3
WHERE Id = 5

-- Single line comment
/*

This is as a multiline comment

*/
-- Retrieve Employees and their correspondind departments
SELECT Employees.First_name , Employees.Last_name , Department.Name AS Department 
FROM Employees  --This gets first_name and last_name
JOIN Department -- Establishing a connection
ON Employees.Department_id = Department.Id  -- Matchin a rule

-- Removing Employee from Database
DELETE FROM Employees
WHERE Id = 3  
