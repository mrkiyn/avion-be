CREATE TABLE students (
	id INTEGER PRIMARY KEY,
	first_name CHARACTER VARYING(50),
	middle_name CHARACTER VARYING(50),
	last_name CHARACTER VARYING(50),
	age INTEGER,
	location CHARACTER VARYING(50)
)

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
(4, 'Isaac', 'Blank', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Blank', 'Lam', 25, 'Manila');


UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1

DELETE FROM students WHERE id = 6

SELECT * FROM students

SELECT COUNT(*) as no_of_students FROM students

SELECT * FROM students WHERE location = 'Manila'

SELECT AVG(age) as average_age FROM students

--or
--SELECT ROUND(AVG(age),2) as average_age FROM students

SELECT * FROM students ORDER BY age desc



---------------------------------------------------------------------------------------------------




CREATE TYPE valid_grade AS ENUM ('A', 'B', 'C', 'D', 'E', 'F');

CREATE TABLE research_papers (
	id INTEGER PRIMARY KEY,
	student_id INTEGER REFERENCES students(id),
	grade VALID_GRADE
)

-- ERROR ON TYPE
-- INSERT INTO research_papers (id, student_id, grade)
-- VALUES (1, 1, 'G')


INSERT INTO research_papers (id, student_id, grade)
VALUES (1, 1, 'C'),
(2, 1, 'A'),
(3, 1, 'A'),
(4, 2, 'B'),
(5, 3, NULL),
(6, 3, 'B'),
(7, 4, 'C'),
(8, 5, NULL),
(9, 5, 'C'),
(10, 5, 'B')


SELECT * FROM research_papers

-- Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)


SELECT
    students.id, students.first_name, students.last_name,
    COUNT(research_papers.id) AS number_of_research_papers
FROM
    students
JOIN
    research_papers ON students.id = research_papers.student_id
GROUP BY
    students.id,  students.first_name, students.last_name
HAVING
    COUNT(research_papers.id) > 1;



-- Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)

SELECT 
	students.first_name, students.last_name, research_papers.id, research_papers.grade
FROM 
	students
JOIN 
	research_papers ON students.id = research_papers.student_id
WHERE 
	research_papers.grade IS NULL;
