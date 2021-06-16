select * from employees
    where department_id=100;

select city,street_address 
       from locations
           where country_id='US';
           
select country_name 
       from countries
           where region_id=3;
           
select first_name,
       last_name,
       salary 
           from employees 
               where manager_id<>114;
           
select * 
       from employees
           where hire_date>='1-JAN-2006';
--NOTA IMPORTANTE DE ESTA QUERY :Si bien el instructor en el curso menciona que podemos escribir el literal de la fecha 
--                               de varias formas , por ejemplo 01-01-2006 en este caso y oracle intentara convertir 
--                               este formato internamente para compararlo con el formato de fecha que tenemos en 
--                               la columna hire_date,en esta BD no esta pasando eso, si no ponemos el formato exacto 
--                               que es DD-MON-YY o en este caso DD-MON-YYYY oracle no reconoce al literal como fecha, 
--                               intenta convertirlo y tira error, las fechas almacenadas en columna hire_date tienen 
--                               formato DD-MON-YY, por lo tanto lo que si entiende es el anio del literal que consultamos
--                               bajo el formato YYYY .