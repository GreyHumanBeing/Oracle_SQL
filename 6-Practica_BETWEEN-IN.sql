select * 
       from employees 
           where department_id between 40 and 60;
           
select * 
       from employees 
           where hire_date between '01-JAN-2002' and '31-DEC-2004';
           
select last_name 
       from employees
           where last_name between 'D' and 'H';
           
select * 
       from employees 
           where department_id in (30,60,90);
           
select * 
       from employees 
           where job_id in ('IT_PROG','PU_CLERK');
           
select city,
       country_id 
           from locations
               where country_id in ('UK','JP');