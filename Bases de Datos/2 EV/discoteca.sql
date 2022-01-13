DROP DATABASE IF EXISTS DISCOTECA;
CREATE DATABASE DISCOTECA;
USE DISCOTECA;

DROP TABLE IF EXISTS ALBUM;
DROP TABLE IF EXISTS ARTISTA;
DROP TABLE IF EXISTS GENERO;

CREATE TABLE GENERO (
nombre VARCHAR(50) PRIMARY KEY
);

CREATE TABLE ARTISTA (
nombre VARCHAR(50) PRIMARY KEY,
numerodiscos INTEGER NOT NULL,
fechaprimerdisco DATE NOT NULL,
pais VARCHAR(50) NOT NULL
);

CREATE TABLE ALBUM (
nombre VARCHAR(50) PRIMARY KEY,
nombre_artista VARCHAR(50) NOT NULL,
nombre_genero VARCHAR(50) NOT NULL,
fecha DATE NOT NULL
);

ALTER TABLE ALBUM ADD FOREIGN KEY (nombre_artista) REFERENCES ARTISTA (nombre) ON DELETE RESTRICT;
ALTER TABLE ALBUM ADD FOREIGN KEY (nombre_genero) REFERENCES GENERO (nombre) ON DELETE RESTRICT;

INSERT INTO GENERO VALUES
('Rock'),
('PopRock'),
('Jazz'),
('Clasica'),
('Electronica'),
('Hard Rock'),
('Metal'),
('Rap');

INSERT INTO ARTISTA VALUES
('Pat Metheny','20','1974_01_01','USA'),
('Pink Floyd','15','1965_01_01','UK'),
('Camel','10','1971_01_01','UK'),
('King Crimson','12','1969_01_01','UK'),
('Talking Heads','40','1967_01_01','USA'),
('Whitesnake','20','1975_01_01','UK'),
('Scorpions','16','1979_01_01','USA'),
('Iron Maiden','16','1980_01_01','USA');

INSERT INTO ALBUM VALUES
('Secret Story','Pat Metheny','Jazz','1992_01_01'),
('Still Life','Pat Metheny','Jazz','1987_01_01'),
('Orchestrion','Pat Metheny','Jazz','2009_01_01'),
('The Dark Side of the Moon','Pink Floyd','Rock','1974_01_01'),
('Wish you were here','Pink Floyd','Rock','1975_01_01'),
('Moonmadness','Camel','Rock','1976_01_01'),
('Snow Goose','Camel','Rock','1975_01_01'),
('Red','King Crimson','Rock','1974_01_01'),
('Forevermore','Whitesnake','Hard Rock','2011_01_01'),
('Love at First Sting','Scorpions','Hard Rock','1984_01_01'),
('Senjutsu','Iron Maiden','Metal','2021_01_01');