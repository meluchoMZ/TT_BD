/* Script de formato da base de datos do traballo tutelado BD(2019-2020)
	Opcion 1 : Xestion de pandemias
	Autor: Miguel Blanco Godon 78809752E 
	Grupo 2.4
*/

set pages 50;
set feed 1;
set linesize 500;

/* Para controlar os formatos das datas e horas */
ALTER SESSION SET nls_date_format='dd-Mon-yyyy hh24:mi:ss';

/* Taboa Centros sanitarios */
COLUMN id_centro HEADING 'IDENTIFICADOR';
COLUMN nome_centro HEADING 'CENTRO' FORMAT A50;
COLUMN enderezo HEADING 'ENDEREZO' FORMAT A50;

/* Taboa Centros sanitarios - Tipo material */
COLUMN id_centro HEADING 'CENTRO';
COLUMN tipo_mat HEADING 'TIPO DE MATERIAL' FORMAT A15;
COLUMN stock_minimo HEADING 'STOCK MINIMO' FORMAT 999999;
COLUMN stock_actual HEADING 'STOCK ACTUAL' FORMAT 999999;


/* Taboa Pacientes */
COLUMN dni HEADING 'DNI' FORMAT A9;
COLUMN nome HEADING 'NOME' FORMAT A15;
COLUMN apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN sexo HEADING 'SEXO' FORMAT A6;
COLUMN data_nacemento HEADING 'DATA DE NACEMENTO';
COLUMN enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN data_rexistro HEADING 'DATA DE REXISTRO';

/* Taboa Telefonos_pacientes */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A15;
COLUMN tlf HEADING 'TELEFONO' FORMAT A9;

/* Taboa Sanitarios */
COLUMN dni HEADING 'DNI' FORMAT A9;
COLUMN nome HEADING 'NOME' FORMAT A15;
COLUMN apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN sexo HEADING 'SEXO' FORMAT A6;
COLUMN data_nacemento HEADING 'DATA DE NACEMENTO';
COLUMN enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN categoria HEADING 'CATEGORIA' FORMAT A12;

/* Taboa Telefonos_sanitarios*/
COLUMN dni_sanitario HEADING 'SANITARIO' FORMAT A9;
COLUMN tlf HEADING 'TELEFONO' FORMAT A9;

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
COLUMN resultado HEADING 'RESULTADO';

/* Taboa Tratamentos */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN data_hora_fin HEADING 'DATA/HORA FIN';
COLUMN observacions HEADING 'OBSERVACIONS';
COLUMN dni_sanitario HEADING 'SANITARIO' FORMAT A9;

/* Taboa Medicamentos */
COLUMN id_medicamento HEADING 'MEDICAMENTO';
COLUMN posoloxia HEADING 'POSOLOXIA' FORMAT A50;

/* Taboa Medicamentos e tratamentos */
COLUMN dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN id_medicamento HEADING 'MEDICAMENTO';
COLUMN dosificacion HEADING 'DOSIFICACION' FORMAT A100;

/* Taboa Equipos */
COLUMN id_centro HEADING 'CENTRO SANITARIO';
COLUMN num_equipo HEADING 'EQUIPO';
COLUMN planta HEADING 'PLANTA';
COLUMN cometido HEADING 'COMETIDO' FORMAT A50;

/* Taboa Historico Equipos */
COLUMN id_centro HEADING 'CENTRO SANITARIO';
COLUMN num_equipo HEADING 'EQUIPO';
COLUMN data_hora_ini HEADING 'DATA/HORA INICIAL';
COLUMN data_hora_fin HEADING 'DATA/HORA FINAL';

/* Taboa Quendas */
COLUMN id_centro HEADING 'CENTRO';
COLUMN dia_hora_ini HEADING 'DATA/HORA INICIAL';
COLUMN data_hora_fin HEADING 'DATA/HORA FINAL';
COLUMN incidencias HEADING 'INCIDENCIAS' FORMAT A50;

/* Taboa Equipos e Quendas */
COLUMN id_centro HEADING 'CENTRO';
COLUMN num_equipo HEADING 'EQUIPO';
COLUMN data_hora_equipo HEADING 'DATA EQUIPO';
COLUMN data_hora_quenda HEADING 'DATA QUENDA';

/* Taboa Sanitarios e Historicos de equipos */
COLUMN dni_sanitario HEADING 'MEDICO';
COLUMN id_centro HEADING 'CENTRO HISTORICO';
COLUMN num_equipo HEADING ' EQUIPO HISTORICO';
COLUMN data_hora_ini HEADING 'DATA HISTORICO';

/* Taboa Materiais */
COLUMN referencia HEADING 'REFERENCIA';
COLUMN nome HEADING 'NOME';
COLUMN id_centro HEADING 'CENTRO';
COLUMN data_hora_equipo HEADING 'DATA/HORA DO EQUIPO';
COLUMN num_equipo HEADING 'EQUIPO';
COLUMN data_hora_quenda HEADING 'DATA/HORA DO QUENDA';
COLUMN tipo_material HEADING 'TIPO DE MATERIAL';
