select 'El empleado ' || first_name || ' del departamento ' || department_id || ' tiene un salario de ' || salary as "DATOS"
            from employees;
            
select 'La calle ' || street_address || ' pertenece a la ciudad:' || city as "Calle y Ciudad"
           from locations