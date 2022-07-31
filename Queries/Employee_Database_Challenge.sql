SELECT * FROM employees;
-- 1.
SELECT emp_no, first_name, last_name
FROM employees;
-- 2.
SELECT title, from_date, to_date
FROM titles;
--3. 
SELECT e.emp_no, e.first_name, e.last_name
INTO retirement_titles
FROM employees as e
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Check table
SELECT * FROM retirement_titles

-- Join the tables
SELECT rt.emp_no, rt.first_name, rt.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles_final
FROM retirement_titles as rt
LEFT JOIN titles as t
ON rt.emp_no = t.emp_no
ORDER BY emp_no;

SELECT DISTINCT ON (titles.title)employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees as e 
WHERE epmployees.birth_date
ORDER BY , DESC;