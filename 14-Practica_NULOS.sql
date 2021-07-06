REM   Script: 14-Practica_NULOS
REM   Exercise

rem • De la tabla LOCATIONS visualizar el nombre de la ciudad y el estadoprovincia. En el caso de que no tenga que aparezca el texto “No tiene” 


select city, 
       nvl(state_province,'No tiene') as estado_provincia 
           from hr.locations;

rem • Visualizar el salario de los empleados incrementado en la comisión (PCT_COMMISSION). Si no tiene comisión solo debe salir el salario 


select first_name,  
       nvl2(commission_pct,(salary + (salary*commission_pct/100)),salary) as salario_total  
          from hr.employees;

rem • Seleccionar el nombre del departamento y el manager_id. Si no tiene, debe salir un -1 


select department_name,  
       nvl(manager_id,-1)  
           from hr.departments;

rem • De la tabla LOCATIONS, devolver NULL si la ciudad y la provincia son iguales. Si no son iguales devolver la CITY. 


select city,  
       state_province,  
       nullif(city,state_province)  
           from hr.locations;

