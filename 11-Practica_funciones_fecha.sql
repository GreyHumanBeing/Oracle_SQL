REM   Script: 11-Practica_funciones_fecha
REM   exercise

REM • Indicar el número de días que los empleados llevan en la empresa 


select first_name || ' ' || last_name as "Nombre Completo", 
       hire_date as "Fecha de inicio", 
       sysdate-hire_date as "Numero de dias que lleva en la empresa", 
       trunc(sysdate-hire_date) as "Numero de dias solamente"        
           from hr.employees;

REM • Indicar la fecha que será dentro de 15 días 


select sysdate as "Fecha de hoy",sysdate+15 as "Fecha en 15 dias" from dual;

REM • ¿Cuántos MESES faltan para la navidad? La cifra debe salir redondeada, con 1 decimal 


select months_between('25-dec-2021',sysdate) from dual            
;

select sysdate as "Fecha de hoy", 
       round(months_between('25-DEC-2021',sysdate),1) as "Meses que faltan para Navidad (Aprox)"  
           from dual;

REM • Indicar la fecha de entrada de un empleado y el último día del mes que entró 


select first_name || ' ' || last_name as "Nombre Completo", 
       hire_date as "Fecha de entrada",  
       last_day(hire_date) as "Ultimo dia del mes en el que entro"  
           from hr.employees;

REM • Utilizando la función ROUND, indicar los empleados que entraron en los últimos 15 días de cada mes 


select first_name || ' ' || last_name as "Nombre Completo", 
       hire_date as "Fecha de entrada"  
           from hr.employees  
               where round(hire_date,'MONTH')>hire_date;

