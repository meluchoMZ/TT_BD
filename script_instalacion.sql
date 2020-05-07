/* Script de instalación da base de datos do traballo tutelado BD(2019-2020)
   Opción 1 : Xestión de pandemias
   Autor: Miguel Blanco Godón 78809752E 
   Grupo 2.4
*/

/* Creación da táboa "Pacientes" */
CREATE TABLE pacientes (
    dni VARCHAR(9) CONSTRAINT PK_pacientes PRIMARY KEY CONSTRAINT NN_pacientes_dni NOT NULL,
    nome VARCHAR(256) CONSTRAINT NN_pacientes_nome NOT NULL,
    apelidos VARCHAR(256) CONSTRAINT NN_pacientes_apelidos NOT NULL,
    sexo VARCHAR(6) CONSTRAINT NN_pacientes_sexo NOT NULL CONSTRAINT CH_sexo CHECK ((sexo = "HOME") OR (sexo = "MULLER")),
    data_nacemento DATE CONSTRAINT NN_pacientes_data_nacemento NOT NULL,
    enderezo VARCHAR(512) CONSTRAINT NN_pacientes_enderezo NOT NULL,
    data_rexistro DATE CONSTRAINT NN_pacientes_data_rexistro NOT NULL
);

/* Creación da táboa "Teléfonos_pacientes" */
CREATE TABLE telefonos_pacientes (
    dni_paciente VARCHAR(9) CONSTRAINT PK_telefonos_pacientes_1 PRIMARY KEY REFERENCES pacientes CONSTRAINT NN_telefonos_pacientes_dni NOT NULL,
    tlf NUMERIC(9) CONSTRAINT PK_telefonos_pacientes_2 PRIMARY KEY
);