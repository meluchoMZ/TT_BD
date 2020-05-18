/* Consultas para o traballo tutelado de BD (2019/2020)
	- Opción 1.
	- Autor: Miguel Blanco Godón.
*/

/* PUNTO 1 */
/* 1: Mostra todos os pacientes rexistrados na BD. Indica, para cada un: DNI; nome completo; data na que foi
rexistrado/a por primeira vez no sistema; metodo de rexistro(chamada/ingreso hospitalario).*/
SELECT dni, nome, apelidos, data_rexistro, coalesce(centro, 'Chamada') 
FROM pacientes p join historico_pacientes hp on p.dni=hp.dni_paciente;

/* PUNTO 2 */
/* 2: Mostra o identificador e nome completo de todos os pacientes que permanecian confinados na sua casa o 
dia 1 de maio de 2020 as 00:00:00h. */

/* 3: Mostra o identificador e nome completo de todos os pacientes estaban ingresados nun centro hospitalario
o dia 1 de maio de 2020 as 00:00:00h. */

/* 4: Mostra o identificador e nome completo de todos os pacientes que estiveron ingresados en polo menos dous
hospitais diferentes. Indica tamen cantos hospitais foron. */

/* 5: Mostra o identificador e nome completo de todos os pacientes que estiveron confinados no seu domicilio 
en dous ou mais periodos diferentes. Indica tamen cantas veces foron en total. */

/* 6: Lista o identificador e nome completo de todos aqueles pacientes que xa foron dados de alta. Mosta tamen
a data de alta. */

/* PUNTO 3 */
/* 7: Elixe un dos pacientes do resultado da consulta 2. Mostra a data e hora das proximas chamadas telefonicas
programadas de control que lle hai que facer. */

/* 8: Mostra, para o mesmo paciente, o numero de chamadas realizadas ata agora nas qeu superou os 37 de temperatura
e rexistrou unha tension sistolica superior a 12. */

/* 9: Elixe un dos pacientes do resultado da consulta 3. Mostra a data e hora das proximas revisions periodicas 
programadas que lle hai que facer. */

/* 10: Mostra, para o mesmo paciente, o numero de revision realizadas ata agora nas que superou os 37 de temperatura
e rexistrou unha tension sistolica superior a 12. */

/* 11: Mostra, para o mesmo paciente: tipo de exploracions realizadas na ultima revision; nome do sanitario/a que 
realizou cada exploracion; resultado de cada exploracion. Podes utilizar directamente na consulta a data da revision. */

/* PUNTO 4 */
/* 12: Mostra, para cada equipo de sanitarios rexistrados na BD: identificador do equipo; nome do centro hospitalario 
no que traballa; numero ACTUAL de integrantes; e data do último cambio na composicion do equipo. */

/* 13: Elixe un dos equipos do resultado da consulta 12. Mostra a lista (identificador; nome completo; posto; centro
hospitalario) dos seus membros nunha data concreta (por exemplo, o dia 01 de maio de 2020 as 00:00:00: horas). */

/* 14: Indica, para cada centro hospitalario rexistrado na BD, que equipo (ou equipos) estara de garda o 01 de maio 
de 2020 as 22:00:00. Mostra o identificador do equipo, o nome do centro hospitalario, e a data de inicio e fin da 
quenda que esta cubrindo o equipo no centro hospitalario. */

/* PUNTO 5 */
/* 15: Elixe a un dos pacientes do resultado da consulta 3. Mostra o tratamento que tinha establecido o dia 01 de 
maio de 2020, as 00:00:00h: nome do medicamento, dose establecida, e identificador e nome completo do sanitario que 
autorizou ese medicamento. */

/* PUNTO 6 */
/* 16: Para cada tipo de material rexistrado na BD, indica o stock disponhible en cada centro hospitalario. Mostra:
nome do material; nome do centro hospitalario; unidades disponhibles no centro; limiar minimo de stock no centro; 
e diferencia entre eles. */

/* PUNTO 7 */
/* 17: Elixe a un dos equipos da consulta 14. Queremos saber as unidades concretas de material foron usadas durante
a quenda cuberta na dita consulta 14 polo equipo en cuestion. Mostra a referencia do material, e o tipo/nome de 
material. */

/* TRES CONSULTAS DE TEMA LIBRE */
/* 18: Consulta cun join exterior de tres taboas ou mais. */

/* 19: Consulta con expresion de consulta. */

/* 20: Consulta con subconsulta de fila. */
