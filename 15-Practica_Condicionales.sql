REM   Script: 15-Practica_Condicionales
REM   Exercise

rem • Visualizar los siguientes datos con CASE. 


rem   o Si el departamento es 50 ponemos Transporte 


rem   o Si el departamento es 90 ponemos Dirección 


rem   o Cualquier otro número ponemos “Otro departamento” 


select first_name,  
       last_name,  
case department_id 
     when 50 then 'Transporte'  
     when 90 then 'Direccion'  
     else 'Otro departamento'  
end as "Nombre Departamento"  
      from hr.employees;

rem • Mostrar de la tabla LOCATIONS, la ciudad y el país. Ponemos los siguientes datos dependiendo de COUNTRY_ID. 


rem   o Si es US y CA ponemos América del Norte 


rem   Si es CH, UK, DE,IT ponemos Europa 


rem   o Si es BR ponemos América del Sur 


rem   o Si no es ninguno ponemos ‘Otra zona’ 


select city,  
       country_id,  
case  
     when country_id in('US','CA') then 'America del Norte'  
     when country_id in('CH','UK','DE','IT') then 'Europa'  
     when country_id = 'BR' then 'America del Sur'  
     else 'Otra zona'  
end as zona  
     from hr.locations;

rem • Realizar el primer ejercicio con DECODE en vez de con CASE 


select first_name,  
       last_name,  
       decode(department_id,50,'Transporte',90,'Direccion','Otro departamento')  as "Nombre Departamento"  
      from hr.employees;

