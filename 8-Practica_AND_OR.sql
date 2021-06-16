select first_name, 
       hire_date, 
       job_id
           from employees
               where job_id='IT_PROG' and salary < 6000;
               
               
select * 
       from employees 
           where first_name like 'S%' and salary > 3000 and (department_id=50 or department_id=80) 
--Otra alternativa
--minus
select * 
       from employees 
           where first_name like 'S%' and salary > 3000 and department_id in(50,80);
           

select * 
       from employees
           where job_id='IT_PROG' and phone_number like '5%' and hire_date between '01-JAN-2007' and '31-DEC-2007'; 