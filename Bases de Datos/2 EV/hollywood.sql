USE hollywood;

-- Borrar tablas

DROP TABLE IF EXISTS ACTUAN;
DROP TABLE IF EXISTS CASADOS;
DROP TABLE IF EXISTS PELICULAS;
DROP TABLE IF EXISTS DIRECTORES;
DROP TABLE IF EXISTS ACTORES;

-- Crear tablas

CREATE TABLE PELICULAS(
    nombre VARCHAR(50) PRIMARY KEY,
    ano YEAR NOT NULL,
    nacion VARCHAR(25) NOT NULL,
    calif FLOAT(1) NOT NULL,
    nom_prot VARCHAR (50) NOT NULL,
    nom_dir VARCHAR (50) NOT NULL);

CREATE TABLE ACTORES(
    nombre VARCHAR(50) PRIMARY KEY,
    sexo VARCHAR(1) CHECK(sexo='F' OR sexo='M') NOT NULL,
    fecha_nac DATE NOT NULL,
    nacion VARCHAR(25) NOT NULL);

CREATE TABLE DIRECTORES(
    nombre VARCHAR(50) PRIMARY KEY,
    sexo VARCHAR(1) CHECK(sexo='F' OR sexo='M') NOT NULL,
    fecha_nac DATE NOT NULL,
    nacion VARCHAR(25) NOT NULL);

CREATE TABLE CASADOS(
    nom1 VARCHAR(50) NOT NULL,
    nom2 VARCHAR(50) NOT NULL,
    PRIMARY KEY(nom1));

CREATE TABLE ACTUAN(
    nom_actor VARCHAR(50) NOT NULL,
    nom_peli VARCHAR(50) NOT NULL,
    PRIMARY KEY(nom_actor,nom_peli));

-- Crear FKs

ALTER TABLE CASADOS ADD FOREIGN KEY (nom1) REFERENCES ACTORES(nombre);
ALTER TABLE CASADOS ADD FOREIGN KEY (nom2) REFERENCES ACTORES(nombre);
ALTER TABLE PELICULAS ADD FOREIGN KEY (nom_dir) REFERENCES DIRECTORES(nombre);
ALTER TABLE PELICULAS ADD FOREIGN KEY (nom_prot) REFERENCES ACTORES(nombre);
ALTER TABLE ACTUAN ADD FOREIGN KEY (nom_peli) REFERENCES PELICULAS(nombre);
ALTER TABLE ACTUAN ADD FOREIGN KEY (nom_actor) REFERENCES ACTORES(nombre);

-- Insercion de datos

INSERT INTO ACTORES VALUES
('Harrison Ford','M','1942-07-13','USA'),
('Tom Cruise','M','1962-07-03','USA'),
('Tony Curtis','M','1925-06-03-','USA'),
('Penelope Cruz','F','1974-04-28','Spain'),
('Leonardo DiCaprio','M','1974-11-11-','USA'),
('Ursula Corbero','F','1989-08-11','Spain'),
('Benicio del Toro','M','1967-02-19','Puerto Rico'),
('Tom Holland','M','1996-06-01','USA'),
('Angelina Jolie','F','1975-06-04','Spain');

INSERT INTO DIRECTORES VALUES
('Harrison Ford','M','1942-07-13','USA'),
('Clint Eastwood','M','1962-07-03','USA'),
('Stanley Kubric','M','1925-06-03-','USA'),
('Quentin Tarantino','F','1974-04-28','USA'),