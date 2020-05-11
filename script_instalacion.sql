/* Script de instalación da base de datos do traballo tutelado BD(2019-2020)
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
	tlf NUMERIC(9) CONSTRAINT NN_telefonos_pacientes_tlf NOT NULL,
	PRIMARY KEY (dni_paciente, tlf)
);

/* Creación da táboa "Teléfonos_sanitarios" */
CREATE TABLE telefonos_sanitarios (
	dni_sanitario VARCHAR(9) REFERENCES sanitarios CONSTRAINT NN_telefonos_sanitarios_dni NOT NULL,
	tlf NUMERIC(9) CONSTRAINT NN_telefonos_sanitarios_tlf NOT NULL,
	PRIMARY KEY (dni_sanitario, tlf)
);

/* INSERCIÓN DE VALORES NAS TÁBOAS */

/* En "Pacientes" */
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro) 
	VALUES ('11111111A', 'Alicia', 'Álvarez Ávila', 'Muller', '01/01/1991', 'R/ Alexandre Bóveda Nº 1, A Coruña', '01/01/2020');
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('22222222B', 'Bernardo', 'Bósforo Bieito', 'Home', '02/02/1992', 'R/ Francis Bacon Nº 2, A Coruña', '02/02/2020');
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('33333333C', 'Carla', 'Castro Cormelle', 'Muller', '03/03/1993', 'R/ Marie Curie Nº 2, A Coruña', '03/03/2020');

/* En "Sanitarios" */
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('12345678T', 'Margarita', 'Robles Conde', 'Muller', '13/05/1975', 'R/ Alexandre Bóveda Nº 9, A Coruña', 'Enfermería');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('98765432Z', 'José Luís', 'López Barreiro', 'Home', '06/11/1962', 'R/ Rosalía de Castro Nº 3, Pontevedra', 'Paramedicina');

/* En "Teléfonos pacientes" */
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('11111111A', 611222333);
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', 699888777);
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', 688999777);

/* En "Teléfonos sanitarios" */
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', 620940954);
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', 765681513);
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('98765432Z', 684513518);