 
--El operador LIKE solo funciona con cadenas de texto , hay que tener cuidado en como y cuando se usa porque puede traer problemas de performance  
select * 
       from employees 
           where first_name like 'J%';
            
select * 
       from employees 
           where first_name like 'S%n';

select * 
       from countries 
           where country_name like '_r%';
