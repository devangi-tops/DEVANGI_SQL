USE HR ;

CREATE TABLE EMP
(
JOB_ID INT PRIMARY KEY AUTO_INCREMENT,
ENAME VARCHAR(45),
ELNAME VARCHAR (45),
HIRE_DATE DATE,
DEPT_NO INT,
SALARY int
);

SELECT * FROM EMP ;

ALTER TABLE EMP
ADD COLUMN DEPT VARCHAR(45);

ALTER TABLE EMP
ADD COLUMN COMMISSION INT ;

SELECT * FROM EMP ;

-- 1. Display all the information in the EMP table

SELECT * FROM EMP ;

-- 2. Display only the hire date and employee name for each employee

SELECT HIRE_DATE AND ENAME
FROM EMP ;

-- 5. Create a query to diplay all the data from the EMP table. Separate each column y a comma.Name the coulmn the output
 

SELECT CONCAT(JOB_ID , '' , ENAME , '' , ELNAME , '' , HIRE_DATE , '' , DEPT_NO , '' , SALARY , '' , DEPT , '' , COMMISSION)
FROM EMP ;

-- 3. Display the Ename concatenated with the job ID, seprated by a comma and space, and name the column Employee and Title

SELECT CONCAT(ENAME,',',JOB_ID) AS EMP,JOB_ID AS TITLE
FROM EMP ;

-- 6. Diplay the names  and salaries of all employees with a salary greater than 2000

SELECT ENAME , SALARY FROM EMP
WHERE SALARY > 2000 ;

-- 7. Display the names and dates of employees with the column headers"NAME" and "start date"

SELECT ENAME AS 'NAME' ,
HIRE_DATE AS 'START DATE'
FROM EMP ;

-- 8. Display the names and hire dates of all employees in the order they were hired

SELECT ENAME , HIRE_DATE 
FROM EMP
ORDER BY HIRE_DATE ;

-- 4. Display the hire date,name and department number for all clerks

SELECT HIRE_DATE,ENAME,DEPT_NO
FROM EMP
WHERE DEPT='CLERK' ;

SELECT * FROM EMP ;