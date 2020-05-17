/* Script para encher da base de datos do traballo tutelado BD(2019-2020)
	Opcion 1 : Xestion de pandemias
	Autor: Miguel Blanco Godon 78809752E 
	Grupo 2.4
*/

/* INSERCION DE VALORES NAS TABOAS */

/* En "Centros sanitarios" */
INSERT INTO centros_sanitarios (id_centro, nome_centro, enderezo)
	VALUES (1, 'Hospital Clinico Universitario', 'Santiago de Compostela');
INSERT INTO centros_sanitarios (id_centro, nome_centro, enderezo)
	VALUES (35, 'Complexo Hospitalario Universitario', 'A Corunha');

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
	VALUES ('11111111A', 'Alicia', 'Alvarez Avila', 'Muller', to_date('01-01-1991 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Alexandre Boveda N 1, A Corunha', to_date('30-04-2020 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('22222222B', 'Bernardo', 'Bosforo Bieito', 'Home', to_date('02-02-1992 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Francis Bacon N 2, A Corunha', to_date('22-04-2020 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO pacientes (dni, nome, apelidos, sexo, data_nacemento, enderezo, data_rexistro)
	VALUES ('33333333C', 'Carla', 'Castro Cormelle', 'Muller', to_date('03-03-1993 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Marie Curie N 2, Santiago de Compostela', to_date('29-04-2020 00:00:00', 'dd-mm-yy hh24:mi:ss'));

/* En "Sanitarios" */
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('12345678T', 'Margarita', 'Robles Conde', 'Muller', to_date('13-05-1975 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Alexandre Boveda N 9, A Corunha', 'Enfermaria');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('98765432Z', 'Jose Luis', 'Lopez Barreiro', 'Home', to_date('06-11-1962 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Rosalia de Castro N 3, Santiago de Compostela', 'Paramedicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('46356167D', 'Maria', 'Tunhas Dobarro', 'Muller', to_date('22-01-1984 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Malcolm Gladwell N 2, Santiago de Compostela', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('98465167F', 'Faustino', 'Lopez Cadea', 'Home', to_date('31-08-1959 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Pio Baroja N 1, Santiago de Compostela', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('79865132V', 'Herminio', 'Lamas Freire', 'Home', to_date('06-11-1956 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Padre Sarmiento N 46, A Corunha', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('61681664T', 'Ana Maria', 'Sanchez Freije', 'Muller', to_date('19-09-1968 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Leonardo da Vinci, A Corunha', 'Medicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('51681686P', 'Laura', 'Fernandez Vara', 'Muller', to_date('07-03-1985 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Manuel Azanha, A Corunha', 'Paramedicina');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('16843534R', 'Carlos', 'Perez Caamanho', 'Home', to_date('15-08-1991 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Carl Freidich Gauss, Santiago de Compostela', 'Enfermaria');
INSERT INTO sanitarios (dni, nome, apelidos, sexo, data_nacemento, enderezo, categoria)
	VALUES ('24651384L', 'Antonia', 'Gonzalez Garcia', 'Muller', to_date('09-04-1989 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'R/ Che Guevara, A Corunha', 'Medicina');

/* En "Telefonos pacientes" */
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('11111111A', '611222333');
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', '699888777');
INSERT INTO telefonos_pacientes (dni_paciente, tlf)
	VALUES ('33333333C', '688999777');

/* En "Telefonos sanitarios" */
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', '620940954');
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('12345678T', '765681513');
INSERT INTO telefonos_sanitarios (dni_sanitario, tlf)
	VALUES ('98765432Z', '684513518');

/* En "Revisions" */
INSERT INTO revisions (dni_paciente, data_hora, descricion, entrevista, feita, dni_sanitario)
	VALUES ('11111111A', to_date('30-04-2020 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), 'Consulta inicial.', 'O paciente presenta a sintomaloxia xeral.', 'Si', '79865132V');
INSERT INTO revisions (dni_paciente, data_hora, descricion, feita, dni_sanitario)
	VALUES ('11111111A', to_date('12-05-2020 10:25:00', 'dd-mm-yyyy hh24:mi:ss'), 'Primeira revision do paciente.', 'Non', '79865132V');
INSERT INTO revisions (dni_paciente, data_hora, descricion, feita, dni_sanitario)
	VALUES ('11111111A', to_date('19-05-2020 12:00:00', 'dd-mm-yyyy hh24:mi:ss'), 'Primeira revision do paciente.', 'Non', '61681664T');
INSERT INTO revisions (dni_paciente, data_hora, descricion, entrevista, feita, dni_sanitario)
	VALUES ('22222222B', to_date('22-04-2020 19:48:00', 'dd-mm-yyyy hh24:mi:ss'), 'Consulta inicial.', 'Positivo PCR. Asintomatico.', 'Si', '24651384L');

/* En "Historico estados" */
INSERT INTO historico_estados (dni_paciente, data_hora_ini, estado, observacions, id_centro)
	VALUES ('11111111A', to_date('30-04-2020 11:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Enfermo', 'Enfermo leve.', 1);
INSERT INTO historico_estados (dni_paciente, data_hora_ini, estado, observacions)
	VALUES ('22222222B', to_date('22-04-2020 19:40:00', 'dd-mm-yyyy hh24:mi:ss'), 'Enfermo', 'Enfermo asintomatico confinado na casa.');
INSERT INTO historico_estados (dni_paciente, data_hora_ini, estado, observacions, id_centro)
	VALUES ('33333333C', to_date('29-04-2020 00:00:00', 'dd-mm-yy hh24:mi:ss'), 'Enfermo', 'Enfermo grave. Ingresado en UCI.', 35);

/* En "Exploracions" */
INSERT INTO exploracions (id_exploracion, nome, descricion) 
	VALUES (1, 'Toma de temperatura', 'Procedese a medir a temperatura do paciente.');
INSERT INTO exploracions (id_exploracion, nome, descricion) 
	VALUES (2, 'Proba de anticorpos PCR', 'Consiste en realizar un test de seroprevalencia do virus COVID-19 no paciente.');

/* En "Revisions e exploracions" */
INSERT INTO revisions_exploracions (dni_paciente, data_hora_ini, id_exploracion, resultado) 
	VALUES ('11111111A', to_date('30-04-2020 11:35:00', 'dd-mm-yyyy hh24:mi:ss'), 1, '37.5 C');
INSERT INTO revisions_exploracions (dni_paciente, data_hora_ini, id_exploracion, resultado)
	VALUES ('22222222B', to_date('22-04-2020 19:48:00', 'dd-mm-yyyy hh24:mi:ss'), 1, '36.0 C');

/* En "Tratamentos" */
INSERT INTO tratamentos (dni_paciente, data_hora_ini, observacions, dni_sanitario)
	VALUES ('11111111A', to_date('01-05-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'A tomar ata que remitan os sintomas.', '79865132V');
INSERT INTO tratamentos (dni_paciente, data_hora_ini, observacions, dni_sanitario)
	VALUES ('22222222B', to_date('23-04-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'So tomar se aparecen sintomas. Nese caso, chamar inmediatamente.', '24651384L');

/* En "Medicamentos" */
INSERT INTO medicamentos (id_medicamento, posoloxia)
	VALUES (68435168, 'Tres tomas ao dia, 5 mililitros por toma.');
INSERT INTO medicamentos (id_medicamento, posoloxia)
	VALUES (68135884, 'Unha unica toma ao dia, 600 miligramos');

/* En "Medicamentos e tratamentos" */
INSERT INTO medicamentos_tratamentos (dni_paciente, data_hora_ini, id_medicamento, dosificacion)
	VALUES ('11111111A', to_date('01-05-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 68435168, 'Tres tomas de 5 mililitros ao dia.');
INSERT INTO medicamentos_tratamentos (dni_paciente, data_hora_ini, id_medicamento, dosificacion)
	VALUES ('22222222B', to_date('23-04-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 68135884, 'Tomar segundo posoloxia, so se hai sintomas.');

/* En "Equipos" */
INSERT INTO equipos (id_centro, num_equipo, planta, cometido)
	VALUES (1, 1, -1, 'Uxencias 1.');
INSERT INTO equipos (id_centro, num_equipo, planta, cometido)
	VALUES (1, 2, -1, 'Urxencias 2.');
INSERT INTO equipos (id_centro, num_equipo, planta, cometido)
	VALUES (1, 3, -1, 'Triaxe 1.');
INSERT INTO equipos (id_centro, num_equipo, planta, cometido)
	VALUES (1, 4, -1, 'Triaxe 2.');

/* En "Historico de equipos" */
INSERT INTO historico_equipos (id_centro, num_equipo, data_hora_ini)
	VALUES (1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO historico_equipos (id_centro, num_equipo, data_hora_ini)
	VALUES (1, 2, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO historico_equipos (id_centro, num_equipo, data_hora_ini)
	VALUES (1, 3, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO historico_equipos (id_centro, num_equipo, data_hora_ini)
	VALUES (1, 4, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));

/* En "Quendas" */
INSERT INTO quendas (id_centro, dia_hora_ini, dia_hora_fin)
	VALUES (1, to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO quendas (id_centro, dia_hora_ini, dia_hora_fin)
	VALUES (1, to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 00:30:00', 'dd-mm-yyyy hh24:mi:ss'));

/* En "Equipos e quendas" */
INSERT INTO equipos_quendas (id_centro, num_equipo, data_hora_equipo, data_hora_quenda)
	VALUES (1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO equipos_quendas (id_centro, num_equipo, data_hora_equipo, data_hora_quenda)
	VALUES (1, 2, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO equipos_quendas (id_centro, num_equipo, data_hora_equipo, data_hora_quenda)
	VALUES (1, 3, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO equipos_quendas (id_centro, num_equipo, data_hora_equipo, data_hora_quenda)
	VALUES (1, 4, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'));

/* En "Sanitarios historico equipos" */
INSERT INTO sanitarios_historico (dni_sanitario, id_centro, num_equipo, data_hora_ini)
	VALUES ('12345678T', 1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO sanitarios_historico (dni_sanitario, id_centro, num_equipo, data_hora_ini)
	VALUES ('98765432Z', 1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO sanitarios_historico (dni_sanitario, id_centro, num_equipo, data_hora_ini)
	VALUES ('79865132V', 1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO sanitarios_historico (dni_sanitario, id_centro, num_equipo, data_hora_ini)
	VALUES ('61681664T', 1, 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'));

/* En "Material" */
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (61351351, 'FFP2 3M A004837721', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 1, to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Mascarillas');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (51535451, 'FFP2 3M A004837722', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 2, to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Mascarillas');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (61358684, 'Nitrilo tamanho L', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 3, to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Luvas');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (33164631, 'Quiruxicas tamanho S', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 4, to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Luvas');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (76516813, 'Uvex 9161014', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 1, to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Lentes');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (68135131, 'Uvex 9161013', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 2, to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Lentes');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (35168513, 'S3505CEC', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 3, to_date('12-03-2020 08:30:00', 'dd-mm-yyyy hh24:mi:ss'), 'Batas');
INSERT INTO material (referencia, nome, id_centro, data_hora_equipo, num_equipo, data_hora_quenda, tipo_material)
	VALUES (13513515, 'FS3545CEA', 1, to_date('12-03-2020 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), 4, to_date('12-03-2020 16:30:00', 'dd-mm-yyyy hh24:mi:ss'); 'Batas');
