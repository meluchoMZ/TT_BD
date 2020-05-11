/* Script para encher da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

/* INSERCIÓN DE VALORES NAS TÁBOAS */

/* En "Centros sanitarios" */
INSERT INTO centros_sanitarios (id_centro, nome_centro, enderezo)
	VALUES (1, 'Hospital Clínico Universitario', 'Santiago de Compostela');
INSERT INTO centros_sanitarios (id_centro, nome_centro, enderezo)
	VALUES (35, 'Complexo Hospitalario Universitario', 'A Coruña');

/* En "Centros sanitarios - Tipo material" */
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (1, 'Mascarillas', 5000, 12468);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (1, 'Luvas', 10000, 26752);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (1, 'Lentes', 3000, 4527);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (1, 'Batas', 3000, 5246);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (35, 'Mascarillas', 7500, 9865);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (35, 'Luvas', 15000, 34682);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (35, 'Batas', 4500, 6843);
INSERT INTO centro_tipo (id_centro, tipo_mat, stock_minimo, stock_actual)
	VALUES (35, 'Lentes', 4500, 6138);

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
	VALUES ('11111111A', '611222333');
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', '699888777');
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', '688999777');

/* En "Teléfonos sanitarios" */
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', '620940954');
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', '765681513');
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('98765432Z', '684513518');

/* En "Tipo material" */
INSERT INTO tipo_material (tipo, info) 
	VALUES ('Mascarillas', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Luvas', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Lentes', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Batas', 'Parte fundamental dun EPI');