/* Script de borrado da base de datos do traballo tutelado BD(2019-2020)
	Opción 1 : Xestión de pandemias
	Autor: Miguel Blanco Godón 78809752E 
	Grupo 2.4
*/

/* Borrado da táboa "Centros sanitarios" */
DROP TABLE centros_sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Centros sanitarios - Tipo de material" */
DROP TABLE centro_tipo CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Pacientes" */
DROP TABLE pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Sanitarios" */
DROP TABLE sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_pacientes" */
DROP TABLE telefonos_pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Teléfonos_sanitarios" */
DROP TABLE telefonos_sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Tipo de material" */
DROP TABLE tipo_material CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Revisións" */
DROP TABLE revisions CASCADE CONSTRAINTS PURGE;

/* Borrado da táboa "Histórico pacientes" */
DROP TABLE historico_estados CASCADE CONSTRAINTS PURGE;

/* Borrado da t�boa "Exploraci�ns" */
DROP TABLE exploracions CASCADE CONSTRAINTS PURGE;

/* Borrado da t�boa "Revisi�ns e exploraci�ns" */
DROP TABLE revisions_exploracions CASCADE CONSTRAINTS PURGE;
