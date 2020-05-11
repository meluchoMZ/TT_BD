/* Script de borrado da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

/* Borrado da táboa "Pacientes" */
DROP TABLE IF EXISTS pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Sanitarios" */
DROP TABLE IF EXISTS sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_pacientes" */
DROP TABLE IF EXISTS telefonos_pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_sanitarios" */
DROP TABLE IF EXISTS sanitarios CASCADE CONSTRAINTS PURGE;