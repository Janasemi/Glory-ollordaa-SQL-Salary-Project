---This Command displays all the data in the salary file
SELECT * 
FROM TechProject..salaries

---This Command displays all the data in the salary file in  an order display of the third and fourth replacement format
SELECT *
FROM TechProject..salaries
ORDER BY 3,4

--Select the data we are using
SELECT experience_level, job_title, salary
FROM TechProject..salaries

--Displaying the salaries earned compared with the role of the employees
SELECT job_title, salary
FROM TechProject..salaries

--Comparing the total salary with the salary equivalent in dollars 
SELECT experience_level,salary, salary_in_usd, (salary/salary_in_usd)
FROM TechProject..salaries


--Comparing the total salary with the salary equavalent in dollars to display its percentage
SELECT experience_level,salary, salary_in_usd, (salary/salary_in_usd)*100 AS salarypercentage
FROM TechProject..salaries

--Comparing the total salary with the salary equavalent in dollars to display its percentage from companies in the United States
SELECT experience_level,salary, salary_in_usd, (salary/salary_in_usd)*100 AS salarypercentage
FROM TechProject..salaries
WHERE company_location LIKE '%US%'

--Comparing the total salary with the location of the company the employee works in
SELECT experience_level,salary, company_location
FROM TechProject..salaries

--Companies with the highest salary payment rate grouped by the experience level and the company location
SELECT experience_level,company_location, MAX(salary) AS highpayingcompanies, MAX((salary/salary_in_usd))*100 AS perhighpayingcomp
FROM TechProject..salaries
GROUP BY experience_level,company_location 

--Companies with the highest salary payment rate ordered in descending order by the perentage of high paying companies 
SELECT experience_level,company_location, MAX(salary) AS highpayingcompanies, MAX((salary/salary_in_usd))*100 AS perhighpayingcomp
FROM TechProject..salaries
ORDER BY perhighpayingcomp DESC


--Companies with the highest salary payment rate by job title ordered in ascending order
SELECT job_title, MAX(salary) AS salarycount
FROM TechProject..salaries
GROUP BY job_title 
ORDER BY salarycount ASC

--Retrieve the list of Job Titles with Data in the name
SELECT job_title, experience_level, employment_type
FROM TechProject..salaries 
WHERE job_title LIKE '%Data%'

--Retrieve all Job Titles with role ending in 'ist'
SELECT job_title, experience_level, employment_type, work_year
FROM TechProject..salaries
WHERE job_title LIKE '%ist'

--Checking for null values in salary
SELECT * 
FROM TechProject..salaries
WHERE salary is NULL

