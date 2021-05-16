-- Question 1
Select t.title as "Titles", count(*) as "Employees"
From employees e
Inner join titles t
	ON e.emp_no = t.emp_no 
Where e.birth_date > "1965-01-01"
Group By t.title;

-- Question 2
Select t.title as "Title", avg(s.salary) as "Average Salary"
FROM salaries s
Inner Join titles t
	On s.emp_no = t.emp_no
GROUP BY t.title;


-- Question 3
Select dept_name as "Department", sum(s.salary) as "Salary"
From salaries s
Inner Join dept_emp de
	On s.emp_no = de.emp_no
Inner Join departments d
	On de.dept_no = d.dept_no
Where d.dept_name = "Marketing"
And Year( s.from_date ) <= "1992"
And Year( s.to_date ) >= "1990";
-- assuming that years were inclusive
-- Question went over in class.