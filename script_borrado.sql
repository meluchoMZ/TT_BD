/* Script de borrado da base de datos do traballo tutelado BD(2019-2020)
	Opcion 1 : Xestion de pandemias
	Autor: Miguel Blanco Godon 78809752E 
	Grupo 2.4
*/

/* Borrado da taboa "Centros sanitarios" */
DROP TABLE centros_sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Centros sanitarios - Tipo de material" */
DROP TABLE centro_tipo CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Pacientes" */
DROP TABLE pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Sanitarios" */
DROP TABLE sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Telefonos_pacientes" */
DROP TABLE telefonos_pacientes CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Telefonos_sanitarios" */
DROP TABLE telefonos_sanitarios CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Tipo de material" */
DROP TABLE tipo_material CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Revisions" */
DROP TABLE revisions CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Historico pacientes" */
DROP TABLE historico_estados CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Exploracions" */
DROP TABLE exploracions CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Revisions e exploracions" */
DROP TABLE revisions_exploracions CASCADE CONSTRAINTS PURGE;

/* Borrado da taboa "Tratamentos" */
DROP TABLE tratamentos CASCADE CONSTRAINTS PURGE;
