REM   Script: 10-Practica_funciones_numericas
REM   Exercises

select * from hr.employees;

select * from hr.employees 
     where mod(employee_id,2)<>0;

select trunc(25.67,0) from dual;

select round(25.67,0) from dual;

select trunc(25.67,1) from dual;

select round(25.67,1) from dual;

select trunc(25.34,1) from dual;

select round(25.34,1) from dual;

select trunc(25.34,2) from dual;

select round(25.34,2) from dual;

select round(25.349,2) from dual;

select trunc(25.67,-1) from dual;

select round(25.67,-1) from dual;

