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
COLUMN centros_sanitarios.id_centro HEADING 'IDENTIFICADOR';
COLUMN centros_sanitarios.nome_centro HEADING 'CENTRO' FORMAT A50;
COLUMN centros_sanitarios.enderezo HEADING 'ENDEREZO' FORMAT A50;

/* Taboa Centros sanitarios - Tipo material */
COLUMN centro_tipo.id_centro HEADING 'CENTRO';
COLUMN centro_tipo.tipo_mat HEADING 'TIPO DE MATERIAL' FORMAT A15;
COLUMN centro_tipo.stock_minimo HEADING 'STOCK MINIMO' FORMAT 999999;
COLUMN centro_tipo.stock_actual HEADING 'STOCK ACTUAL' FORMAT 999999;


/* Taboa Pacientes */
COLUMN pacientes.dni HEADING 'DNI' FORMAT A9;
COLUMN pacientes.nome HEADING 'NOME' FORMAT A15;
COLUMN pacientes.apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN pacientes.sexo HEADING 'SEXO' FORMAT A6;
COLUMN pacientes.data_nacemento HEADING 'DATA DE NACEMENTO';
COLUMN pacientes.enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN pacientes.data_rexistro HEADING 'DATA DE REXISTRO';

/* Taboa Telefonos_pacientes */
COLUMN telefonos_pacientes.dni_paciente HEADING 'PACIENTE' FORMAT A15;
COLUMN telefonos_pacientes.tlf HEADING 'TELEFONO' FORMAT A9;

/* Taboa Sanitarios */
COLUMN sanitarios.dni HEADING 'DNI' FORMAT A9;
COLUMN sanitarios.nome HEADING 'NOME' FORMAT A15;
COLUMN sanitarios.apelidos HEADING 'APELIDOS' FORMAT A30;
COLUMN sanitarios.sexo HEADING 'SEXO' FORMAT A6,
COLUMN sanitarios.data_nacemento HEADING 'DATA DE NACEMENTO';
COLUMN sanitarios.enderezo HEADING 'ENDEREZO' FORMAT A40;
COLUMN sanitarios.categoria HEADING 'CATEGORIA' FORMAT A12;

/* Taboa Telefonos_sanitarios*/
COLUMN telefonos_sanitarios.dni_sanitario HEADING 'SANITARIO' FORMAT A9;
COLUMN telefonos_sanitarios.tlf HEADING 'TELEFONO' FORMAT A9;

/* Taboa Tipos material */
COLUMN tipo_material.tipo HEADING 'TIPO DE MATERIAL' FORMAT A17;
COLUMN tipo_material.info HEADING 'INFORMACION' FORMAT A60;

/* Taboa Revisions */ 
COLUMN revisions.dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN revisions.data_hora HEADING 'DATA E HORA';
COLUMN revisions.descricion HEADING 'DESCRICION' FORMAT A50;
COLUMN revisions.entrevista HEADING 'ENTREVISTA' FORMAT A50;
COLUMN revisions.feita HEADING 'FEITA?' FORMAT A6;
COLUMN revisions.dni_sanitario HEADING 'SANITARIO' FORMAT A9;

/* Taboa Historico de estados */
COLUMN historico_estados.dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN historico_estados.data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN historico_estados.data_hora_fin HEADING 'DATA/HORA FIN';
COLUMN historico_estados.estado HEADING 'ESTADO' FORMAT A7;
COLUMN historico_estados.observacions HEADING 'OBSERVACIONS' FORMAT A50;
COLUMN historico_estados.id_centro HEADING 'CENTRO SANITARIO';

/* Taboa Exploracions */
COLUMN exploracions.id_exploracion HEADING 'IDENTIFICADOR';
COLUMN exploracions.nome HEADING 'EXPLORACION' FORMAT A50;
COLUMN exploracions.descricion HEADING 'DESCRICION' FORMAT A100;

/* Taboa Revisions e exploracions */
COLUMN revisions_exploracions.dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN revisions_exploracions.data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN revisions_exploracions.id_exploracion HEADING 'EXPLORACION';
COLUMN revisions_exploracions.resultado HEADING 'RESULTADO' FORMAT A50;

/* Taboa Tratamentos */
COLUMN tratamentos.dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN tratamentos.data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN tratamentos.data_hora_fin HEADING 'DATA/HORA FIN';
COLUMN tratamentos.observacions HEADING 'OBSERVACIONS';
COLUMN tratamentos.dni_sanitario HEADING 'SANITARIO' FORMAT A9;

/* Taboa Medicamentos */
COLUMN medicamentos.id_medicamento HEADING 'MEDICAMENTO';
COLUMN medicamentos.posoloxia HEADING 'POSOLOXIA' FORMAT A50;

/* Taboa Medicamentos e tratamentos */
COLUMN medicamentos_tratamentos.dni_paciente HEADING 'PACIENTE' FORMAT A9;
COLUMN medicamentos_tratamentos.data_hora_ini HEADING 'DATA/HORA INICIO';
COLUMN medicamentos_tratamentos.id_medicamento HEADING 'MEDICAMENTO';
COLUMN medicamentos_tratamentos.dosificacion HEADING 'DOSIFICACION' FORMAT A100;

/* Taboa Equipos */
COLUMN equipos.id_centro HEADING 'CENTRO SANITARIO';
COLUMN equipos.num_equipo HEADING 'EQUIPO';
COLUMN equipos.planta HEADING 'PLANTA';
COLUMN equipos.cometido HEADING 'COMETIDO' FORMAT A50;

/* Taboa Historico Equipos */
COLUMN historico_equipos.id_centro HEADING 'CENTRO SANITARIO';
COLUMN historico_equipos.num_equipo HEADING 'EQUIPO';
COLUMN historico_equipos.data_hora_ini HEADING 'DATA/HORA INICIAL';
COLUMN historico_equipos.data_hora_fin HEADING 'DATA/HORA FINAL';

/* Taboa Quendas */
COLUMN quendas.id_centro HEADING 'CENTRO SANITARIO';
COLUMN quendas.dia_hora_ini HEADING 'DATA/HORA INICIAL';
COLUMN quendas.data_hora_fin HEADING 'DATA/HORA FINAL';
COLUMN quendas.incidencias HEADING 'INCIDENCIAS';

/* Taboa Equipos e Quendas */
COLUMN equipos_quendas.id_centro HEADING 'PUTO CENTRO';
COLUMN equipos_quendas.num_equipo HEADING 'PUTO EQUIPO';
COLUMN equipos_quendas.data_hora_equipo HEADING 'PUTA DATA EQUIPO';
COLUMN equipos_quendas.data_hora_quenda HEADING 'PUTA DATA QUENDA';

/* Taboa Sanitarios e Historicos de equipos */
COLUMN sanitarios_historico.dni_sanitario HEADING 'PUTO MEDICO';
COLUMN sanitarios_historico.id_centro HEADING 'CENTRO HISTORICO';
COLUMN sanitarios_historico.num_equipo HEADING ' EQUIPO HISTORICO';
COLUMN sanitarios_historico.data_hora_ini HEADING 'DATA HISTORICO';

/* Taboa Materiais */
COLUMN material.referencia HEADING 'REFERENCIA';
COLUMN material.nome HEADING 'MATERIAL';
COLUMN material.id_centro HEADING 'CENTRO';
COLUMN material.data_hora_equipo HEADING 'DATA/HORA DO EQUIPO';
COLUMN material.num_equipo HEADING 'EQUIPO';
COLUMN material.data_hora_quenda HEADING 'DATA/HORA DO QUENDA';
COLUMN material.tipo_material HEADING 'TIPO DE MATERIAL';
