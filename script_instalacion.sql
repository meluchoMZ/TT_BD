/* Script de creación de táboas da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

/* CREACIÓN DE TÁBOAS */ 

/* Creación da táboa "Pacientes" */
CREATE TABLE pacientes (
	dni VARCHAR(9) CONSTRAINT PK_pacientes PRIMARY KEY CONSTRAINT NN_pacientes_dni NOT NULL,
	nome VARCHAR(256) CONSTRAINT NN_pacientes_nome NOT NULL,
	apelidos VARCHAR(256) CONSTRAINT NN_pacientes_apelidos NOT NULL,
	sexo VARCHAR(6) CONSTRAINT NN_pacientes_sexo NOT NULL  CHECK ((sexo = 'Home') OR (sexo = 'Muller')),
	data_nacemento DATE CONSTRAINT NN_pacientes_data_nacemento NOT NULL,
	enderezo VARCHAR(512) CONSTRAINT NN_pacientes_enderezo NOT NULL,
	data_rexistro DATE CONSTRAINT NN_pacientes_data_rexistro NOT NULL
);

/* Creación da táboa Sanitarios */
CREATE TABLE sanitarios (
	dni VARCHAR(9) CONSTRAINT PK_sanitarios PRIMARY KEY CONSTRAINT NN_sanitarios_dni NOT NULL,
	nome VARCHAR(256) CONSTRAINT NN_sanitarios_nome NOT NULL,
	apelidos VARCHAR(256) CONSTRAINT NN_sanitarios_apelidos NOT NULL,
	sexo VARCHAR(6) CONSTRAINT NN_sanitarios_sexo NOT NULL CHECK ((sexo = 'Home') OR (sexo = 'Muller')),
	data_nacemento DATE CONSTRAINT NN_sanitarios_data_nacemento NOT NULL,
	enderezo VARCHAR(512) CONSTRAINT NN_sanitarios_enderezo NOT NULL,
	categoria VARCHAR(12) CONSTRAINT NN_sanitarios_categoria NOT NULL CHECK ((categoria = 'Medicina') OR (categoria = 'Enfermería') OR (categoria = 'Paramedicina'))
);

/* Creación da táboa "Teléfonos_pacientes" */
CREATE TABLE telefonos_pacientes (
	dni_paciente VARCHAR(9) REFERENCES pacientes CONSTRAINT NN_telefonos_pacientes_dni NOT NULL,
	tlf VARCHAR(9) CONSTRAINT NN_telefonos_pacientes_tlf NOT NULL,
	PRIMARY KEY (dni_paciente, tlf)
);

/* Creación da táboa "Teléfonos_sanitarios" */
CREATE TABLE telefonos_sanitarios (
	dni_sanitario VARCHAR(9) REFERENCES sanitarios CONSTRAINT NN_telefonos_sanitarios_dni NOT NULL,
	tlf VARCHAR(9) CONSTRAINT NN_telefonos_sanitarios_tlf NOT NULL,
	PRIMARY KEY (dni_sanitario, tlf)
);
