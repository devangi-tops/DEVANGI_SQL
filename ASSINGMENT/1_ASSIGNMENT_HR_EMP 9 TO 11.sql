USE HR ;

SELECT * FROM EMP ;

-- 9. Display the names and salaries of all employees in reverse salary order 

SELECT ENAME , SALARY
FROM EMP
ORDER BY SALARY DESC ;

-- 10. Display 'ename' and 'deptno' who are all earned commission and display salary in reverse order

SELECT ENAME, DEPT_NO, SALARY
FROM EMP
WHERE COMMISSION IS NOT NULL
ORDER BY SALARY DESC ;

-- 11. Display the last name and job title of all employees who do not have a manager

SELECT ELNAME, DEPT
FROM EMP
WHERE MANAGER IS NULL ;

-- 12.Display the last name, job, and salary for all employees whose job is sales representative or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000    

SELECT ELNAME, DEPT , SALARY
FROM EMP 
WHERE (DEPT = 'sales representative' OR DEPT = 'stock clerk' )
AND SALARY NOT IN (2500, 3500, 5000) ; 

-- 1. Display the maximum, minimum and average salary and commission earned

SELECT 
MAX(SALARY) AS MAXSALARY,
MIN(SALARY) AS MINSALARY,
AVG(SALARY) AS AVGSALARY,
MAX(COMMISSION) AS MAXCOMMISSION,
MIN(COMMISSION) AS MINCOMMISSION,
AVG(COMMISSION) AS AVGCOMMISSION 
FROM EMP ;

-- 2. Display the department number, total salary payout and total commission payout for each department

SELECT DEPT_NO,
SUM(SALARY) AS TOTALSALARYPAYOUT,
SUM(COMMISSION) AS TOTALCOMMISSIONPAYOUT
FROM EMP
GROUP BY DEPT_NO ;

-- 3. Display the department number and number of employees in each department

SELECT DEPT_NO,
COUNT(*) AS NUMBEROFENAME
FROM EMP 
GROUP BY DEPT_NO ;

-- 4.Display the department number and total salary of employees in each department

SELECT DEPT_NO ,
SUM(SALARY) AS TOTALSALARY
FROM EMP
GROUP BY DEPT_NO ;

-- 5. Display the employee's name who doesn't earn a commission. Order the result set without using the column name 

SELECT * FROM EMP WHERE COMMISSION IS NULL OR COMMISSION = 0
ORDER BY 1 ;

-- 6.  Display the employees name, department id and commission. If an Employee doesn't earn the commission, then display as 'No commission'. Name the columns appropriately

 SELECT ENAME AS 'ENAME',
 DEPT_NO AS 'DEPT_NO',
 CASE
 WHEN 