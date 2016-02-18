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
	CONSTRAINT id_employee_pkey PRIMARY KEY(id),
	CONSTRAINT employee_id_department_foreign FOREIGN KEY (id_department) 
		REFERENCES employee_department (id)
);

CREATE TABLE employee_hobby (
);

-- ...
