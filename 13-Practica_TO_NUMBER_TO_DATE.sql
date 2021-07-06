REM   Script: 13-Practica_TO_NUMBER_TO_DATE
REM   Exercise 

rem • Convertir las siguientes cadenas a números '1210.73' ‘$127.2’ 


select to_number('1210.73','9999.99') from dual;

select to_number('$127.2','$999.9')   from dual;

rem • Convertir los 3 primeros caracteres del número de teléfono en números y multiplicarlos por 2.


select phone_number 
       from hr.employees;

select substr(phone_number,1,3) 
       from hr.employees;

select to_number(substr(phone_number,1,3)) * 2  
       from hr.employees;

rem • Convertir las siguientes cadenas en fecha (NOTA: el mes lo debemos poner en el idioma que tengamos en el SqlDeveloper. 


rem 10 DE FEBRUARY DE 2018 , FACTURA: MARCH0806  


select to_date('10 DE FEBRUARY DE 2018','DD "DE" MONTH "DE" YYYY') from dual;

select to_date('FACTURA: MARCH0806','"FACTURA:" MONTHDDRR') from dual;

