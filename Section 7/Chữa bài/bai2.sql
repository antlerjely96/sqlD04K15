/* 2. */
SELECT employees.first_name, employees.last_name, departments.departmen_name, locations.city, locations.state_province
FROM departments INNER JOIN employees ON departments.department_id = employees.department_id
INNER JOIN locations ON departments.department_id = locations.location_id;

/* 5. */
SELECT employees.first_name, employees.last_name, departments.departmen_name, locations.city, locations.state_province
FROM departments INNER JOIN employees ON departments.department_id = employees.department_id
INNER JOIN locations ON departments.department_id = locations.location_id
WHERE employees.first_name LIKE '%z%';

/* 13. */
SELECT jobs.job_title, departments.department_name, employees.employee_name, job_history.start_date
FROM job_history INNER JOIN jobs ON job_history.job_id = jobs.job_id
INNER JOIN departments ON job_history.department_id = departments.department_id
INNER JOIN employees ON job_history.employee_id = employees.employee_id
WHERE job_history.start_date >= '1993-01-01' AND job_history.start_date <= '1997-08-31';

/* 17. */
SELECT countries.country_name, locations.city, departments.department_name
FROM locations INNER JOIN countries ON locations.country_id = countries.country_id
INNER JOIN departments ON locations.department_id = departments.department_id;

/* 21. */
SELECT countries.country_name, locations.city, COUNT(departments.department_id)
FROM locations INNER JOIN countries ON locations.country_id = countries.country_id
INNER JOIN departments ON locations.department_id = departments.department_id
WHERE departments.department_id IN (SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(department_id) >= 2)
GROUP BY countries.country_name, locations.city;

/* 22. */
SELECT departments.department_name, employees.first_name, employees.last_name, locations.city
FROM departments INNER JOIN locations ON departments.location_id = locations.locations_id
INNER JOIN employees ON employees.employee_id = departments.manager_id;
