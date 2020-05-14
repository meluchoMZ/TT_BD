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

/* En "Tipo material" */
INSERT INTO tipo_material (tipo, info) 
	VALUES ('Mascarillas', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Luvas', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Lentes', 'Parte fundamental dun EPI');
INSERT INTO tipo_material (tipo, info)
	VALUES ('Batas', 'Parte fundamental dun EPI');

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
	VALUES ('11111111A', 'Alicia', 'Álvarez Ávila', 'Muller', to_date('01-01-1991 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Alexandre Bóveda Nº 1, A Coruña', to_date('30-04-2020 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('22222222B', 'Bernardo', 'Bósforo Bieito', 'Home', to_date('02-02-1992 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Francis Bacon Nº 2, A Coruña', to_date('22-04-2020 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('33333333C', 'Carla', 'Castro Cormelle', 'Muller', to_date('03-03-1993 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Marie Curie Nº 2, Santiago de Compostela', to_date('29-04-2020 00:00:00', 'dd-mm-yy hh24:mi:ss'));

/* En "Sanitarios" */
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('12345678T', 'Margarita', 'Robles Conde', 'Muller', to_date('13-05-1975 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Alexandre Bóveda Nº 9, A Coruña', 'Enfermaría');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('98765432Z', 'José Luís', 'López Barreiro', 'Home', to_date('06-11-1962 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Rosalía de Castro Nº 3, Santiago de Compostela', 'Paramedicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('46356167D', 'María', 'Tuñas Dobarro', 'Muller', to_date('22-01-1984 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Malcolm Gladwell Nº 2, Santiago de Compostela', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('98465167F', 'Faustino', 'López Cadea', 'Home', to_date('31-08-1959 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Pío Baroja Nº 1, Santiago de Compostela', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('79865132V', 'Herminio', 'Lamas Freire', 'Home', to_date('06-11-1956 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Padre Sarmiento Nº 46, A Coruña', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('61681664T', 'Ana María', 'Sánchez Freije', 'Muller', to_date('19-09-1968 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Leonardo da Vinci, A Coruña', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('51681686P', 'Laura', 'Fernández Vara', 'Muller', to_date('07-03-1985 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Manuel Azaña, A Coruña', 'Paramedicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('16843534R', 'Carlos', 'Pérez Caamaño', 'Home', to_date('15-08-1991 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Carl Freidich Gauss, Santiago de Compostela', 'Enfermaría');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('24651384L', 'Antonia', 'González García', 'Muller', to_date('09-04-1989 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Che Guevara, A Coruña', 'Medicina');

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

/* En "Revisións" */
INSERT INTO revisions (dni_paciente, data_hora, descricion, entrevista, feita, dni_sanitario)
	VALUES ('11111111A', to_date('30-04-2020 11:35:00', 'dd-mm-yyyy hh:mi:ss'), 'Consulta inicial.', 'O paciente presenta a sintomaloxía xeral.', 'Si', '79865132V');
INSERT INTO revisions (dni_paciente, data_hora, descricion, feita, dni_sanitario)
	VALUES ('11111111A', to_date('12-05-2020 10:25:00', 'dd-mm-yyyy hh:mi:ss'), 'Primeira revisión do paciente.', 'Non', '79856132V');
INSERT INTO revisions (dni_paciente, data_hora, descricion, feita, dni_sanitario)
	VALUES ('11111111A', to_date('19-05-2020 12:00:00', 'dd-mm-yyyy hh:mi:ss'), 'Primeira revisión do paciente.', 'Non', '61681664T');
INSERT INTO revisions (dni_paciente, data_hora, descricion, entrevista, feita, dni_sanitario)
	VALUES ('22222222B', to_date('22-04-2020 07:48:00', 'dd-mm-yyyy hh:mi:ss'), 'Consulta inicial.', 'Positivo PCR. Asintomático.', 'Si', '24651384L');