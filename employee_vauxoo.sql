-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
	id serial NOT NULL,
	name character varying(20),
	description character varying(100),
	CONSTRAINT id_employee_department_pkey PRIMARY KEY(id)
);

CREATE TABLE employee (
	id serial NOT NULL,
	first_name character varying(20),
	last_name character varying(20),
	id_department integer,
	id_jefe integer,
	CONSTRAINT id_employee_pkey PRIMARY KEY(id),
	CONSTRAINT employee_id_department_foreign FOREIGN KEY (id_department) 
		REFERENCES employee_department (id)
);

CREATE TABLE hobbies (
	id serial NOT NULL,
	name character varying(20),
	description character varying(100),
	CONSTRAINT id_hobbies_pkey PRIMARY KEY(id)
);


CREATE TABLE employee_hobby (
	id_employee integer NOT NULL,
	id_hobby integer NOT NULL,
	CONSTRAINT employee_hobby_id_employee_foreign FOREIGN KEY (id_employee) 
		REFERENCES employee (id),
	CONSTRAINT employee_hobby_id_hobby_foreign FOREIGN KEY (id_hobby) 
		REFERENCES hobbies (id)
);


INSERT INTO employee_department VALUES ( '1','Soporte Tecnico','Reparacion de equipos');
INSERT INTO employee_department VALUES ( '2','ASOBIES','Control de logistica');
INSERT INTO employee_department VALUES ( '3','Desarrollo','Desarrollo de aplicaciones');
INSERT INTO employee_department VALUES ( '4','Maquinaria','Control de maquinari');
INSERT INTO employee_department VALUES ( '5','Pasantias','Control de pasantias');
INSERT INTO employee_department VALUES ( '6','Recursos','Recursos Humanos');

INSERT INTO employee VALUES ( 1,'Sandra','Morillo',1);
INSERT INTO employee VALUES ( 2,'Jose','Castillo',2,1);
INSERT INTO employee VALUES ( 3,'Victor','Navas',3,1);
INSERT INTO employee VALUES ( 4,'Julio','Colinas',4,1);


INSERT INTO hobbies VALUES ( '1','Ver TV','Ver TV');
INSERT INTO hobbies VALUES ( '2','Programar','Programar');
INSERT INTO hobbies VALUES ( '3','Cocinar','Cocinar');
INSERT INTO hobbies VALUES ( '4','Leer','Leer');

INSERT INTO employee_hobby VALUES ( '1','1');
INSERT INTO employee_hobby VALUES ( '1','2');
INSERT INTO employee_hobby VALUES ( '2','1');
INSERT INTO employee_hobby VALUES ( '2','4');
INSERT INTO employee_hobby VALUES ( '3','3');
INSERT INTO employee_hobby VALUES ( '3','2');
INSERT INTO employee_hobby VALUES ( '4','2');
INSERT INTO employee_hobby VALUES ( '4','4');
-- ...
