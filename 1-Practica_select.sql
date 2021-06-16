select first_name,
       last_name,
       phone_number
           from employees;
           
select first_name as nombre,
       job_id as "Tipo de Trabajo" 
           from employees;
           
select * 
        from regions;

select country_name 
           from countries;
           
select street_address as "Direccion", 
       city as "Ciudad", 
       state_province as "Estado"
           from locations;