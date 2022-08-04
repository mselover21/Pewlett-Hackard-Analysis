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

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rtf.emp_no) rtf.emp_no,
	rtf.first_name,
	rtf.last_name,
	rtf.title
INTO unique_titles
FROM retirement_titles_final as rtf
WHERE (to_date BETWEEN '9999-01-01' AND '9999-01-01')
ORDER BY rtf.emp_no ASC, to_date DESC;

-- Check the table
SELECT * FROM unique_titles;

--Title count
SELECT (count(title)), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count(title) DESC;

-- Check the table
SELECT * FROM retiring_titles;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
-- INTO mentorship_elegibility
FROM employees as e
INNER JOIN dept_emp as de ON (e.emp_no = de.emp_no)
INNER JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Count mentorship elegibility by titles
SELECT (count(title)), me.title
FROM mentorship_elegibility as me
GROUP BY me.title
ORDER BY count(title) DESC;