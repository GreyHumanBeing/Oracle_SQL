REM   Script: 9-Practica_funciones_caracter
REM   Ejercicios curso Aprende oracle sql desde 0

select city,street_address  
       from hr.locations 
           where (upper(country_id)='CA' or upper(country_id)='US') and  
                  length(street_address)>15;

select  first_name, 
        last_name, 
        length(first_name), 
        instr(last_name,'b',3), 
        salary * 14 as "Salario Anual"  
            from hr.employees 
                where instr(last_name,'b')>3;

select * 
       from hr.employees 
           where salary between 4000 and 7000 and instr(lower(first_name),'a')<>0 and commission_pct is not null;

select first_name,  
       last_name, 
       upper(substr(first_name,1,1))||'.'||upper(substr(last_name,1,1))||'.' as "Iniciales"        
           from hr.employees 
;

select first_name, 
       last_name 
           from hr.employees 
               where first_name like 'S%' or last_name like 'S%';

select first_name,  
       salary,  
       rpad('*',salary/1000,'*') as ranking 
         from hr.employees 
           order by 2 desc;

select first_name,  
       salary,  
       lpad('*',salary/1000,'*') as ranking 
         from hr.employees 
           order by 2 desc;

