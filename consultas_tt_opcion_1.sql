/* Consultas para o traballo tutelado de BD (2019/2020)
	- Opcion 1.
	- Autor: Miguel Blanco Godon.
*/

/* PUNTO 1 */
/* 1: Mostra todos os pacientes rexistrados na BD. Indica, para cada un: DNI; nome completo; data na que foi
rexistrado/a por primeira vez no sistema; metodo de rexistro(chamada/ingreso hospitalario).*/
SELECT dni, nome, apelidos, data_rexistro, 
	CASE 
		WHEN he.id_centro is NULL then 'Chamada'
		ELSE 'Ingreso Hospitalario'
	END AS "METODO"
FROM pacientes p left join historico_estados he on p.dni=he.dni_paciente left join centros_sanitarios cs on he.id_centro=cs.id_centro
WHERE data_hora_ini = (
	SELECT MIN(data_hora_ini)
	FROM historico_estados a 
	WHERE p.dni=a.dni_paciente
);

/* PUNTO 2 */
/* 2: Mostra o identificador e nome completo de todos os pacientes que permanecian confinados na sua casa o 
dia 1 de maio de 2020 as 00:00:00h. */
SELECT dni, nome, apelidos
FROM pacientes p JOIN historico_estados he ON p.dni=he.dni_paciente
WHERE id_centro IS NULL AND ((data_hora_ini<='01-may-2020 00:00:00' AND data_hora_fin>'01-may-2020 00:00:00') OR (data_hora_ini<='01-may-2020 00:00:00' AND data_hora_fin IS NULL));

/* 3: Mostra o identificador e nome completo de todos os pacientes estaban ingresados nun centro hospitalario
o dia 1 de maio de 2020 as 00:00:00h. */
SELECT dni, nome, apelidos
FROM pacientes p JOIN historico_estados he ON p.dni=he.dni_paciente
WHERE id_centro IS NOT NULL AND ((data_hora_ini<='01-may-2020 00:00:00' AND data_hora_fin>'01-may-2020 00:00:00') OR (data_hora_ini<='01-may-2020 00:00:00' AND data_hora_fin IS NULL));

/* 4: Mostra o identificador e nome completo de todos os pacientes que estiveron ingresados en polo menos dous
hospitais diferentes. Indica tamen cantos hospitais foron. */
SELECT dni, nome, apelidos, COUNT(*) "VECES INGRESADO"
FROM pacientes p JOIN historico_estados he ON p.dni=he.dni_paciente
WHERE  id_centro IS NOT NULL
GROUP BY dni, nome, apelidos
HAVING COUNT(*) >= 2;
 
/* 5: Mostra o identificador e nome completo de todos os pacientes que estiveron confinados no seu domicilio 
en dous ou mais periodos diferentes. Indica tamen cantas veces foron en total. */
SELECT dni, nome, apelidos, COUNT(*) "VECES CONFINADO"
FROM pacientes p JOIN historico_estados he ON p.dni=he.dni_paciente
WHERE id_centro IS NULL AND estado <> 'Curado'
GROUP BY dni, nome, apelidos
HAVING COUNT(*) >= 2;

/* 6: Lista o identificador e nome completo de todos aqueles pacientes que xa foron dados de alta. Mosta tamen
a data de alta. */
SELECT dni, nome, apelidos, data_hora_ini
FROM pacientes p JOIN historico_estados he ON p.dni=he.dni_paciente
WHERE estado='Curado';

/* PUNTO 3 */
/* 7: Elixe un dos pacientes do resultado da consulta 2. Mostra a data e hora das proximas chamadas telefonicas
programadas de control que lle hai que facer. */
SELECT dni, nome, apelidos, data_hora, descricion
FROM pacientes p JOIN revisions r ON p.dni=r.dni_paciente
WHERE dni='22222222B' AND feita='Non';

/* 8: Mostra, para o mesmo paciente, o numero de chamadas realizadas ata agora nas que superou os 37 de temperatura
e rexistrou unha tension sistolica superior a 12. */
SELECT dni, p.nome, apelidos, COUNT(*) 
FROM pacientes p JOIN revisions r ON p.dni=r.dni_paciente JOIN revisions_exploracions re ON r.dni_paciente=re.dni_paciente AND r.data_hora=re.data_hora_ini JOIN exploracions e ON re.id_exploracion=e.id_exploracion
WHERE dni='22222222B' AND (e.nome='Temperatura' AND resultado>37) OR (e.nome='Tension sistolica' AND resultado>12)
GROUP BY dni, p.nome, apelidos;

/* 9: Elixe un dos pacientes do resultado da consulta 3. Mostra a data e hora das proximas revisions periodicas 
programadas que lle hai que facer. */
SELECT dni, nome, apelidos, data_hora, descricion
FROM pacientes p JOIN revisions r ON p.dni=r.dni_paciente
WHERE dni='11111111A' AND feita='Non';

/* 10: Mostra, para o mesmo paciente, o numero de revisions realizadas ata agora nas que superou os 37 de temperatura
e rexistrou unha tension sistolica superior a 12. */
SELECT dni, p.nome, apelidos, COUNT(*)
FROM pacientes p JOIN revisions r ON p.dni=r.dni_paciente JOIN revisions_exploracions re ON r.dni_paciente=re.dni_paciente AND r.data_hora=re.data_hora_ini JOIN exploracions e ON re.id_exploracion=e.id_exploracion
WHERE dni='11111111A' AND (e.nome='Temperatura' AND resultado>37) OR (e.nome='Tensions sistolica' AND resultado>12);

/* 11: Mostra, para o mesmo paciente: tipo de exploracions realizadas na ultima revision; nome do sanitario/a que 
realizou cada exploracion; resultado de cada exploracion. Podes utilizar directamente na consulta a data da revision. */
SELECT p.dni, p.nome, p.apelidos, data_hora_ini, e.nome, resultado, s.dni, s.nome, s.apelidos
FROM pacientes p JOIN revisions r ON p.dni=r.dni_paciente JOIN revisions_exploracions re  ON r.dni_paciente=re.dni_paciente AND r.data_hora=re.data_hora_ini JOIN exploracions e ON re.id_exploracion=e.id_exploracion JOIN sanitarios s ON r.dni_sanitario=s.dni
WHERE dni='11111111A' AND data_hora_ini= (
	SELECT MAX(data_hora_ini)
	FROM revisions
	WHERE dni='11111111A'
);

/* PUNTO 4 */
/* 12: Mostra, para cada equipo de sanitarios rexistrados na BD: identificador do equipo; nome do centro hospitalario 
no que traballa; numero ACTUAL de integrantes; e data do ultimo cambio na composicion do equipo. */

/* 13: Elixe un dos equipos do resultado da consulta 12. Mostra a lista (identificador; nome completo; posto; centro
 hospitalario) dos seus membros nunha data concreta (por exemplo, o dia 01 de maio de 2020 as 00:00:00: horas). */

/* 14: Indica, para cada centro hospitalario rexistrado na BD, que equipo (ou equipos) estara de garda o 01 de maio 
de 2020 as 22:00:00. Mostra o identificador do equipo, o nome do centro hospitalario, e a data de inicio e fin da 
quenda que esta cubrindo o equipo no centro hospitalario. */
SELECT nome_centro, e.num_equipo, data_hora_quenda
FROM centros_sanitarios cs JOIN equipos e ON cs.id_centro=e.id_centro JOIN equipos_quendas eq ON (e.id_centro=eq.id_centro AND e.num_equipo=eq.num_equipo);

/* PUNTO 5 */
/* 15: Elixe a un dos pacientes do resultado da consulta 3. Mostra o tratamento que tinha establecido o dia 01 de 
maio de 2020, as 00:00:00h: nome do medicamento, dose establecida, e identificador e nome completo do sanitario que 
autorizou ese medicamento. */
SELECT p.dni, p.nome, p.apelidos, id_medicamento, dosificacion, s.dni, s.nome, s.apelidos
FROM pacientes p JOIN tratamentos t ON p.dni=t.dni_paciente JOIN medicamentos_tratamentos mt ON (t.dni_paciente=mt.dni_paciente AND t.data_hora_ini=mt.data_hora_ini) JOIN sanitarios ON t.dni_sanitario=s.dni;

/* PUNTO 6 */
/* 16: Para cada tipo de material rexistrado na BD, indica o stock disponhible en cada centro hospitalario. Mostra:
nome do material; nome do centro hospitalario; unidades disponhibles no centro; limiar minimo de stock no centro; 
e diferencia entre eles. */
SELECT tipo, nome_centro, stock_actual, stock_minimo, stock_actual - stock_minimo 'DIFERENZA'
FROM centros_sanitarios cs JOIN centro_tipo ct ON cs.id_centro=ct.id_centro JOIN tipo_material tm ON ct.tipo_mat=tm.tipo;

/* PUNTO 7 */
/* 17: Elixe a un dos equipos da consulta 14. Queremos saber as unidades concretas de material foron usadas durante
a quenda cuberta na dita consulta 14 polo equipo en cuestion. Mostra a referencia do material, e o tipo/nome de 
material. */

/* TRES CONSULTAS DE TEMA LIBRE */
/* 18: Consulta cun join exterior de tres taboas ou mais. */

/* 19: Consulta con expresion de consulta. */

/* 20: Consulta con subconsulta de fila. */
