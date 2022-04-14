SELECT titles.title, count(employees.birth_date) AS "Employees born after 1965-01-01", birth_date FROM employees 
JOIN titles ON employees.emp_no = titles.emp_no
GROUP BY titles.title
HAVING employees.birth_date >= "1965-01-01";

SELECT titles.title, avg(salaries.salary) AS "Average Salary" FROM salaries
JOIN titles ON salaries.emp_no = titles.emp_no
GROUP BY titles.title;

SELECT departments.dept_name, SUM(salaries.salary) AS "Total money spent on salary" FROM salaries 
JOIN dept_emp ON salaries.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
GROUP BY departments.dept_name
HAVING departments.dept_name = "Marketing";