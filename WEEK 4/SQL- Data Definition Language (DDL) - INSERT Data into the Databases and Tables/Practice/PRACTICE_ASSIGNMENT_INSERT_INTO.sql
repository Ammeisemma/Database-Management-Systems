-- Created By Emmanuel Almonte.
-- Course Instructor Craig Nelson.
-- Course Number CIS 205.
-- Last modified on 08/05/2021.


-- Create new Table named tasks.
CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    priority TINYINT NOT NULL DEFAULT 3,
    description TEXT,
    PRIMARY KEY (task_id)
);

-- This statement inserts a new row into the tasks table.
-- Insert statment 1.

INSERT INTO tasks(title,priority)
VALUES('Learn MySQL INSERT Statement',1);

-- This is another way to insert a row into the tasks table.
-- Insert statement 2.
INSERT INTO tasks(title,priority)
VALUES('Understanding DEFAULT keyword in INSERT statement',DEFAULT);

-- This statement inserts a new row to thte tasks table with the start and due date values.
-- Insert statment 3.
INSERT INTO tasks(title, start_date, due_date)
VALUES('Insert date into table','2018-01-09','2018-09-15');

-- This statement inserts the new task using the Current Date value for the start and due date columns.
-- Insert statement 4.
INSERT INTO tasks(title,start_date,due_date)
VALUES('Use current date for the task',CURRENT_DATE(),CURRENT_DATE());

-- This statement inserts multiple rows into the tasks table, In this example there are three rows(records) inserted.
-- Insert statement 5.
INSERT INTO tasks(title, priority)
VALUES
	('My first task', 1),
	('It is the second task',2),
	('This is the third task of the week',3);
