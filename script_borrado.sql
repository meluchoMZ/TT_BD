/* Script de borrado da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

/* Borrado da táboa "Pacientes" */
DROP TABLE pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Sanitarios" */
DROP TABLE sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_pacientes" */
DROP TABLE telefonos_pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_sanitarios" */
DROP TABLE sanitarios CASCADE CONSTRAINTS PURGE;