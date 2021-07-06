REM   Script: 12-Practica_Conversion_to_char
REM   Practica 12 

rem 1. Funciones de conversion. TO_CHAR 


rem • Indicar los empleados que entraron en Mayo en la empresa. Debemos buscar por la abreviatura del mes 


select *  
       from hr.employees  
           where rtrim(to_char(hire_date,'MON'))='MAY';

rem • Indicar los empleados que entraron en el año 2007 usando la función to_char 


select *  
       from hr.employees  
           where to_char(hire_date,'YYYY')='2007';

rem • ¿Qué día de la semana (en letra) era el día que naciste? 


select to_char(to_date('05/02/1983','DD/MM/YYYY'),'DAY') as "Dia en el que naci"  
       from dual;

rem • Averiguar los empleados que entraron en el mes de Junio. Debemos preguntar por el mes en letra. Nota: La función TO_CHAR puede devolver espacios a la derecha) 


select * 
       from hr.employees  
            where rtrim(to_char(hire_date,'MON'))='JUN';

rem • Visualizar el salario de los empleados con dos decimales y en dólares y también en la moneda local (el ejemplo es con euros, suponiendo que el cambio esté en 0,79$) 


select first_name, 
       last_name,  
       rtrim(to_char(salary,'$99999.99')) as "Salario en Dolares",  
       rtrim(to_char(salary * 43.619,'99999999.99')|| ' U$ Pesos uruguayos' ) as "Salario en Pesos Uruguayos"  
            from hr.employees;

