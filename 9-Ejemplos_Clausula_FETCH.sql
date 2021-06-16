/* Funciona de 12c en adelante */
select first_name, 
       salary 
           from employees
               order by salary desc fetch first 10 rows only; 
--Devuelve solo las primeras 10 filas 

--En versiones anteriores a 12c tenemos que hacer algo asi : 
select * from (
select first_name, 
       salary 
           from employees
               order by salary desc     
               ) 
where rownum<=10;
               
/* Funciona de 12c en adelante */
select first_name, 
       salary 
           from employees
               order by salary desc fetch first 8 rows only; 
--En este caso podemos observar que la ultima fila tiene el mismo valor de salario que la fila 7, por lo que si usamos exactamente
--la misma clausula para saber los 7 salarios mas altos, nos va a eliminar la fila 8 que tiene el mismo salario que la 7
--para eso existe esta otra forma: 
select first_name, 
       salary 
           from employees
               order by salary desc fetch first 7 rows with ties; 


select t.first_name,t.salary from (
select first_name, 
       salary, 
       rank() over (order by e.salary desc) as ranking
           from employees e
               order by salary desc     
               )t 
where t.ranking<=7;
               
               
--Con offset en 12c en adelante

select first_name, 
       salary 
           from employees
               order by salary desc offset 5 fetch first 7 rows with ties; 

          
select t.first_name,t.salary from (
select first_name, 
       salary, 
       rank() over (order by e.salary desc) as ranking
           from employees e
                order by salary desc     
               )t 
where t.ranking between 6 and 12;
               
          
--Clausula FETCH con porcentajes (12c en Adelante)       

select first_name, 
       salary 
           from employees
               order by salary desc fetch first 10 percent rows only; 
               
select first_name, 
       salary 
           from employees
               order by salary desc fetch first 10 percent rows with ties; 


select first_name, 
       salary 
           from employees
               order by salary desc offset 5 fetch first 10 percent rows with ties; 

