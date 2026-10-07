CREATE DATABASE school;
USE school;
CREATE TABLE students
( id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50)); 
CREATE TABLE papers
(title VARCHAR(100),
grade INT,
student_id INT,
FOREIGN KEY (student_id) REFERENCES students(id));
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name,title,grade FROM students
JOIN papers p ON students.id = p.student_id
ORDER BY grade DESC;

SELECT first_name,title,grade FROM students
LEFT JOIN papers p ON students.id = p.student_id;


SELECT first_name,IFNULL(title,'MISSING'),IFNULL(grade,0) FROM students
LEFT JOIN papers p ON students.id = p.student_id;

SELECT first_name,AVG(IFNULL(grade,0)) AS AVERAGE FROM students
LEFT JOIN papers p ON students.id = p.student_id
GROUP BY first_name;

SELECT first_name,AVG(IFNULL(grade,0)) AS AVERAGE,
CASE 
WHEN AVG(IFNULL(grade,0)) >= 75 THEN 'PASSING'
ELSE 'FAILING'
END AS passing_status
FROM students
LEFT JOIN papers p ON students.id = p.student_id
GROUP BY first_name
ORDER BY AVERAGE DESC;


