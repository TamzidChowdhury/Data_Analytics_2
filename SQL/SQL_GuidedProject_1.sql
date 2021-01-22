DROP TABLE IF EXISTS student;
CREATE TABLE student
(
    id serial PRIMARY KEY,
    first_name character varying,
    last_name character varying,
    email character varying,
    gender character varying,
    work_phone character varying,
    book_preference_hardcopy boolean 
); 

DROP TABLE IF EXISTS student_marks;
CREATE TABLE student_marks
(
    id serial PRIMARY KEY,
    student_reg_id integer,
    student_id integer,
	unit2 integer,
	unit3 integer,
	unit4 integer,
	unit5 integer    
);

-- print all the rows and columns of the "student" table
select *from student

--print all the rows and columns of the "student_marks" table
select *from student_marks

-- Find the email address of the student named "Papageno Edscer"
Select 
	email
from
	student
where 
	first_name = 'Papageno' and 
	last_name = 'Edscer'
-- Find the registration id of the students who scored more than 99 on unit5
Select
	student_reg_id
from 
	student_marks
where 
	unit5 >= 99
-- Find the registration id of the students who averaged above 95 between unit 2-5
Select 
	student_reg_id
from 
	student_marks
where
	(unit2+unit3+unit4+unit5)/4 > 95
-- Find 10 students with the highest score in unit2-unit5
Select
	student_reg_id, unit2, unit3, unit4, unit5
from
	student_marks
order by
	unit2, unit3, unit4, unit5 ASC
	limit 10
-- Find the first and last name of the person whose phone number is "939-543-0204"
Select 
	first_name, last_name
from
	student
where
	work_phone = '939-543-0204'
-- Find whether student named "Yardley Noulton" prefers hardcopy

Select 
	book_preference_hardcopy
from
	student
where
	first_name = 'Yardley' and 
	last_name = 'Noulton'
--Registration id of students scored between 89 and 100 unit4 

select 
	student_reg_id, student_id
from
	student_marks
where
	unit4 >= 89 and 
	unit4 <= 100
	
-- Find the gender of the student id = 876

select 
	gender
from
	student
where
	id = 876
	