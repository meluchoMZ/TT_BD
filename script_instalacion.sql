/* Script de creacion de taboas da base de datos do traballo tutelado BD(2019-2020)
	Opcion 1 : Xestion de pandemias
	Autor: Miguel Blanco Godon 78809752E 
	Grupo 2.4
*/

/* CREACION DE TABOAS */ 

/* Creacion da taboa "Centros sanitarios" */
CREATE TABLE centros_sanitarios (
	id_centro NUMERIC(3) CONSTRAINT PK_centros_sanitarios PRIMARY KEY CONSTRAINT NN_c_s_id_centro NOT NULL,
	nome_centro VARCHAR(100) CONSTRAINT NN_c_s_nome_centro NOT NULL,
	enderezo VARCHAR(512) CONSTRAINT NN_c_s_enderezo NOT NULL
);

/* Creacion da taboa "Tipo material" */
CREATE TABLE tipo_material (
	tipo VARCHAR(12) CONSTRAINT PK_tipo_material PRIMARY KEY CONSTRAINT NN_tipo_material_tipo NOT NULL 
		CHECK ((tipo = 'Mascarillas') OR (tipo = 'Luvas') OR (tipo = 'Lentes') OR (tipo = 'Batas')),
	info VARCHAR(1024) CONSTRAINT NN_tipo_material_info NOT NULL
);

/* Creacion da taboa "Centro sanitario - tipo material" */
CREATE TABLE centro_tipo (
	id_centro NUMERIC(3) CONSTRAINT NN_centro_tipo_id_centro NOT NULL REFERENCES centros_sanitarios,
	tipo_mat VARCHAR(15) CONSTRAINT NN_centro_tipo_tipo_material NOT NULL REFERENCES tipo_material,
	stock_minimo NUMERIC(6) CONSTRAINT NN_centro_tipo_stock_minimo NOT NULL,
	stock_actual NUMERIC(6),
	PRIMARY KEY (id_centro, tipo_mat),
	CHECK (stock_actual >= stock_minimo)
);

/* Creacion da taboa "Pacientes" */
CREATE TABLE pacientes (
	dni VARCHAR(9) CONSTRAINT PK_pacientes PRIMARY KEY CONSTRAINT NN_pacientes_dni NOT NULL,
	nome VARCHAR(256) CONSTRAINT NN_pacientes_nome NOT NULL,
	apelidos VARCHAR(256) CONSTRAINT NN_pacientes_apelidos NOT NULL,
	sexo VARCHAR(6) CONSTRAINT NN_pacientes_sexo NOT NULL  CHECK ((sexo = 'Home') OR (sexo = 'Muller')),
	data_nacemento DATE CONSTRAINT NN_pacientes_data_nacemento NOT NULL,
	enderezo VARCHAR(512) CONSTRAINT NN_pacientes_enderezo NOT NULL,
	data_rexistro DATE CONSTRAINT NN_pacientes_data_rexistro NOT NULL
);

/* Creacion da taboa Sanitarios */
CREATE TABLE sanitarios (
	dni VARCHAR(9) CONSTRAINT PK_sanitarios PRIMARY KEY CONSTRAINT NN_sanitarios_dni NOT NULL,
	nome VARCHAR(256) CONSTRAINT NN_sanitarios_nome NOT NULL,
	apelidos VARCHAR(256) CONSTRAINT NN_sanitarios_apelidos NOT NULL,
	sexo VARCHAR(6) CONSTRAINT NN_sanitarios_sexo NOT NULL CHECK ((sexo = 'Home') OR (sexo = 'Muller')),
	data_nacemento DATE CONSTRAINT NN_sanitarios_data_nacemento NOT NULL,
	enderezo VARCHAR(512) CONSTRAINT NN_sanitarios_enderezo NOT NULL,
	categoria VARCHAR(12) CONSTRAINT NN_sanitarios_categoria NOT NULL CHECK ((categoria = 'Medicina') OR (categoria = 'Enfermaria') OR (categoria = 'Paramedicina'))
);

/* Creacion da taboa "Telefonos_pacientes" */
CREATE TABLE telefonos_pacientes (
	dni_paciente VARCHAR(9) REFERENCES pacientes CONSTRAINT NN_telefonos_pacientes_dni NOT NULL,
	tlf VARCHAR(9) CONSTRAINT NN_telefonos_pacientes_tlf NOT NULL,
	PRIMARY KEY (dni_paciente, tlf)
);

/* Creacion da taboa "Telefonos_sanitarios" */
CREATE TABLE telefonos_sanitarios (
	dni_sanitario VARCHAR(9) REFERENCES sanitarios CONSTRAINT NN_telefonos_sanitarios_dni NOT NULL,
	tlf VARCHAR(9) CONSTRAINT NN_telefonos_sanitarios_tlf NOT NULL,
	PRIMARY KEY (dni_sanitario, tlf)
);

/* Creacion da taboa "Revisions" */
CREATE TABLE revisions (
	dni_paciente VARCHAR(9) CONSTRAINT NN_revisions_dni_paciente NOT NULL REFERENCES pacientes,
	data_hora DATE CONSTRAINT NN_revisions_data_hora NOT NULL,
	descricion VARCHAR(1024) CONSTRAINT NN_revisions_descricion NOT NULL,
	entrevista VARCHAR(1024),
	feita VARCHAR(3) CONSTRAINT NN_revisions_feita NOT NULL CHECK ((feita = 'Si') OR (feita = 'Non')),
	dni_sanitario VARCHAR(9) CONSTRAINT NN_revisions_dni_sanitario NOT NULL REFERENCES sanitarios,
	PRIMARY KEY (dni_paciente, data_hora) 
);

/* Creacion da taboa "Historico pacientes" */
CREATE TABLE historico_estados (
	dni_paciente VARCHAR(9) CONSTRAINT NN_hist_est_dni_paciente NOT NULL REFERENCES pacientes, 
	data_hora_ini DATE CONSTRAINT NN_hist_est_data_hora_ini NOT NULL,
	data_hora_fin DATE,
	estado VARCHAR(7) CONSTRAINT NN_hist_est_estado NOT NULL CHECK ((estado = 'Curado') OR (estado = 'Enfermo')),
	observacions VARCHAR(1024),
	id_centro NUMERIC(3),
       	PRIMARY KEY (dni_paciente, data_hora_ini)	
);

/* Creacion da taboa "Exploracions" */
CREATE TABLE exploracions (
	id_exploracion NUMBER(6) CONSTRAINT NN_exploracions_id_exploracion NOT NULL CONSTRAINT PK_exploracions PRIMARY KEY,
	nome VARCHAR(50) CONSTRAINT NN_exploracions_nome NOT NULL,
	descricion VARCHAR(1024)
);

/* Creacion da taboa "Revisions e exploracions" */
CREATE TABLE revisions_exploracions (
	dni_paciente VARCHAR(9) CONSTRAINT NN_rev_exp_dni_paciente NOT NULL,
	data_hora_ini DATE CONSTRAINT NN_rev_exp_data_hora_ini NOT NULL,
	id_exploracion NUMBER(6) CONSTRAINT NN_rev_exp_id_exploracion NOT NULL REFERENCES exploracions,
	resultado VARCHAR(1024), 
	PRIMARY KEY (dni_paciente, data_hora_ini, id_exploracion),
	FOREIGN KEY (dni_paciente, data_hora_ini) REFERENCES revisions
);

/* Creacion da taboa "Tratamentos" */
CREATE TABLE tratamentos (
	dni_paciente VARCHAR(9) CONSTRAINT NN_tratamentos_dni_paciente NOT NULL REFERENCES pacientes,
	data_hora_ini DATE CONSTRAINT NN_tratamentos_data_hora_ini NOT NULL,
	data_hora_fin DATE,
	observacions VARCHAR(1024),
	dni_sanitario VARCHAR(9) REFERENCES sanitarios,
	PRIMARY KEY (dni_paciente, data_hora_ini)
);

/* Creacion da taboa "Medicamentos" */
CREATE TABLE medicamentos (
	id_medicamento NUMBER(8) CONSTRAINT NN_medicamentos_id_med NOT NULL CONSTRAINT PK_medicamentos PRIMARY KEY,
	posoloxia VARCHAR(256) CONSTRAINT NN_medicamentos_posoloxia NOT NULL
);

/* Creacion da taboa "Medicamentos dos tratamentos" */
CREATE TABLE medicamentos_tratamentos (
	dni_paciente VARCHAR(9) CONSTRAINT NN_med_trat_dni_paciente NOT NULL,
	data_hora_ini DATE CONSTRAINT NN_med_trat_data_hora_ini NOT NULL,
	id_medicamento CONSTRAINT NN_med_trat_id_med NOT NULL REFERENCES medicamentos,
	dosificacion VARCHAR(512),
	PRIMARY KEY (dni_paciente, data_hora_ini, id_medicamento),
	FOREIGN KEY (dni_paciente, data_hora_ini) REFERENCES tratamentos
);

/* Creacion da taboa "Equipos" */
CREATE TABLE equipos (
	id_centro NUMERIC(3) CONSTRAINT NN_equipos_id_centro NOT NULL  REFERENCES centros_sanitarios,
	num_equipo NUMERIC(3) CONSTRAINT NN_equipos_num_equipo NOT NULL,
	planta NUMERIC(1) CONSTRAINT NN_equipos_planta NOT NULL,,
	cometido VARCHAR(1024) CONSTRAINT NN_equipos_cometido NOT NULL,
	PRIMARY KEY (id_centro, num_equipo)
);

/* Creacion da taboa "Historico equipos" */
CREATE TABLE historico_equipos (
	id_centro NUMERIC(3) CONSTRAINT NN_hist_equ_id_cent NOT NULL,
	num_equipo NUMERIC(3) CONSTRAINT NN_hist_equ_n_equ NOT NULL,
	data_hora_ini DATE CONSTRAINT NN_hist_equ_d_h_ini NOT NULL,
	data_hora_fin DATE,
	PRIMARY KEY (id_centro, num_equipo, data_hora_ini),
	FOREIGN KEY (id_centro, num_equipo) REFERENCES equipos
);

/* Creacion da taboa "Quendas" */
CREATE TABLE quendas (
	id_centro NUMERIC(3) CONSTRAINT NN_quendas_id_centro NOT NULL REFERENCES centros_sanitarios,
	dia_hora_ini DATE CONSTRAINT NN_quendas_dia_hora_ini NOT NULL,
	dia_hora_fin DATE,
	incidencias VARCHAR(1024),
	PRIMARY KEY (id_centro, dia_hora_ini)
);

/* Creacion da taboa "Equipos e quendas" */
CREATE TABLE equipos_quendas (
	id_centro NUMERIC(3) CONSTRAINT NN_eq_quen_id_centro NOT NULL,
	num_equipo NUMERIC(3) CONSTRAINT NN_eq_quen_num_equipo NOT NULL,
	data_hora_equipo DATE CONSTRAINT NN_eq_qu_d_h_equ NOT NULL,
	data_hora_quenda DATE CONSTRAINT NN_eq_qu_d_h_que NOT NULL,
	PRIMARY KEY (id_centro, num_equipo, data_hora_equipo, data_hora_quenda),
	FOREIGN KEY (id_centro, num_equipo, data_hora_equipo) REFERENCES historico_equipos,
	FOREIGN KEY (id_centro, data_hora_quenda) REFERENCES quendas
);

/* Creacion da taboa "Sanitarios e Historicos de equipos" */
CREATE TABLE sanitarios_historico (
	dni_sanitario VARCHAR(9) CONSTRAINT NN_san_his_dni NOT NULL REFERENCES sanitarios,
	id_centro NUMERIC(3) CONSTRAINT NN_san_his_centro NOT NULL,
	num_equipo NUMERIC(3) CONSTRAINT NN_san_his_num_equ NOT NULL,
	data_hora_ini DATE CONSTRAINT NN_san_his_d_h_ini NOT NULL,
	PRIMARY KEY (dni_sanitario, id_centro, num_equipo, data_hora_ini),
	FOREIGN KEY (id_centro, num_equipo, data_hora_ini) REFERENCES historico_equipos
);

/* Creacion da taboa "Material" */
CREATE TABLE material (
	referencia NUMERIC(8) CONSTRAINT NN_material_referencia NOT NULL CONSTRAINT PK_material PRIMARY KEY,
	nome VARCHAR(20) CONSTRAINT NN_material_nome NOT NULL,
	id_centro NUMERIC(3),
	data_hora_equipo DATE,
	num_equipo NUMERIC(3),
	data_hora_quenda DATE,
	tipo_material VARCHAR(20) REFERENCES tipo_material,
	FOREIGN KEY (id_centro, num_equipo, data_hora_equipo) REFERENCES historico_equipos,
	FOREIGN KEY (id_centro, data_hora_quenda) REFERENCES quendas
);
