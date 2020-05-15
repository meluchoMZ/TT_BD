/* Script de formato da base de datos do traballo tutelado BD(2019-2020)
	Opcion 1 : Xestion de pandemias
	Autor: Miguel Blanco Godon 78809752E 
	Grupo 2.4
*/

set pages 50;
set feed 1;
set linesize 250;

/* Para controlar os formatos das datas e horas */
ALTER SESSION SET nls_date_format='dd-Mon-yyyy hh24:mi:ss';

/* Taboa Centros sanitarios */
/* O formato de enderezo esta definido na taboa Pacientes */
COLUMN id_centro HEADING 'IDENTIFICADOR';
COLUMN nome_centro HEADING 'CENTRO' FORMAT A50;

/* Taboa Centros sanitarios - Tipo material */
/* O formato de id_centro esta definido na taboa Centros sanitarios */
COLUMN tipo_mat HEADING 'TIPO DE MATERIAL' FORMAT A15;
COLUMN stock_minimo HEADING 'STOCK MINIMO' FORMAT 999999;
COLUMN stock_actual HEADING 'STOCK ACTUAL' FORMAT 999999;


/* Taboa Pacientes */
COLUMN dni HEADING 'DNI' FORMAT A9;
COLUMN nome HEADING 'NOME' FORMAT A15;
COLUMN apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN sexo HEADING 'SEXO' FORMAT A6;
COLUMN data_nacemento HEADING 'DATA DE NACEMENTO' FORMAT A22;
COLUMN enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN data_rexistro HEADING 'DATA DE REXISTRO' FORMAT A22;

/* Taboa Telefonos_pacientes */
COLUMN dni_paciente HEADING 'DNI DO PACIENTE' FORMAT A15;
COLUMN tlf HEADING 'TELEFONO' FORMAT A9;

/* Taboa Sanitarios */
/* O formato das outras columnas fixao a taboa de pacientes, pois tenhen os mesmos atributos */
COLUMN categoria HEADING 'CATEGORIA' FORMAT A12;

/* Táboa Telefonos_sanitarios*/
/* O formato de tlf xa esta definido en Telefonos_pacientes */
COLUMN dni_sanitario HEADING 'DNI DO SANITARIO' FORMAT A15;

/* Taboa Tipos material */
COLUMN tipo HEADING 'TIPO DE MATERIAL' FORMAT A17;
COLUMN info HEADING 'INFORMACION' FORMAT A60;

/* Taboa Revisions */ 
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora HEADING 'DATA E HORA';
COLUMN descricion HEADING 'DESCRICION' FORMAT A50;
COLUMN entrevista HEADING 'ENTREVISTA' FORMAT A50;
COLUMN feita HEADING 'FEITA?' FORMAT A6;
COLUMN dni_sanitario HEADING 'SANITARIO' FORMAT A9;

/* Taboa Historico de estados */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN data_hora_fin HEADING 'DATA/HORA FIN';
COLUMN estado HEADING 'ESTADO' FORMAT A7;
COLUMN observacions HEADING 'OBSERVACIONS' FORMAT A50;
COLUMN id_centro HEADING 'CENTRO SANITARIO';

/* Taboa Exploracions */
COLUMN id_exploracion HEADING 'IDENTIFICADOR';
COLUMN nome HEADING 'EXPLORACION' FORMAT A50;
COLUMN descricion HEADING 'DESCRICION' FORMAT A100;

/* Taboa Revisions e exploracions */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN id_exploracion HEADING 'EXPLORACION';
COLUMN resultado HEADING 'RESULTADO' FORMAT A50;

/* Taboa Tratamento */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN data_hora_fin HEADING 'DATA/HORA FIN';
COLUMN observacions HEADING 'OBSERVACIONS';
COLUMN dni_sanitario HEADING 'SANITARIO' FORMAT A9;
