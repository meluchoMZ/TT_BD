/* Script de formato da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

set pages 50;
set feed 1;
set linesize 200;

/* Táboa Pacientes */
COLUMN dni HEADING 'DNI' FORMAT A9;
COLUMN nome HEADING 'NOME' FORMAT A15;
COLUMN apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN sexo HEADING 'SEXO' FORMAT A6;
COLUMN data_nacemento HEADING 'DATA DE NACEMENTO' FORMAT A22;
COLUMN enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN data_rexistro HEADING 'DATA DE REXISTRO' FORMAT A22;

/* Táboa Teléfonos_pacientes */
COLUMN dni_paciente HEADING 'DNI DO PACIENTE' FORMAT A15;
COLUMN tlf HEADING 'TELÉFONO' FORMAT A9;

/* Táboa Sanitarios */
/* O formato das outras columnas fíxao a táboa de pacientes, pois teñen os mesmos atributos */
COLUMN categoria HEADING 'CATEGORÍA' FORMAT A12;

/* Táboa Teléfonos_sanitarios*/
/* O formato de tlf xa está definido en Teléfonos_pacientes */
COLUMN dni_sanitario HEADING 'DNI DO SANITARIO' FORMAT A15;