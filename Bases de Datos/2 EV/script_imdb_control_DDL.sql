-- --------------------------------
--      Creación de la BD
-- --------------------------------

DROP SCHEMA IF EXISTS cine_imdb_control ;
CREATE SCHEMA IF NOT EXISTS cine_imdb_control DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE cine_imdb_control ;

-- NOTA: para ver bien los acentos en consola cmd hay que poner chcp 65001

set character_set_client=utf8;
set character_set_connection=utf8;
set character_set_database=utf8;
set character_set_results=utf8;
set character_set_server=utf8;
set names 'utf8';

-- --------------------------------
--     Borrado de las tablas
-- --------------------------------

-- En este caso no se incluye por estar el drop schema


-- --------------------------------
--     Creación de las tablas
-- --------------------------------

CREATE TABLE IF NOT EXISTS cine_imdb_control.actor (
  NOMBRE VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  SEXO ENUM('M', 'F') CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (NOMBRE));

CREATE TABLE IF NOT EXISTS cine_imdb_control.director (
  NOMBRE VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  TARIFA DOUBLE(18,1) NULL DEFAULT NULL,
  PRIMARY KEY (NOMBRE));

CREATE TABLE IF NOT EXISTS cine_imdb_control.pelicula (
  TITULO VARCHAR(400) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  ANIO VARCHAR(100) NULL DEFAULT NULL,
  VALORACION CHAR(4) NOT NULL,
  PRIMARY KEY (TITULO));

CREATE TABLE IF NOT EXISTS cine_imdb_control.genero (
  TITULO VARCHAR(400) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  GENERO VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (TITULO, GENERO));

CREATE TABLE IF NOT EXISTS cine_imdb_control.peli_actor (
  TITULO VARCHAR(400) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  NOMBRE VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  ORDEN INT NULL DEFAULT NULL,
  PRIMARY KEY (TITULO, NOMBRE));

CREATE TABLE IF NOT EXISTS cine_imdb_control.peli_director (
  TITULO VARCHAR(400) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  NOMBRE VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (TITULO, NOMBRE));

-- --------------------------------
--     Creación de las FKs
-- --------------------------------

ALTER TABLE genero ADD FOREIGN KEY (TITULO) REFERENCES pelicula(TITULO) ON DELETE CASCADE;

ALTER TABLE peli_actor ADD FOREIGN KEY (TITULO) REFERENCES pelicula(TITULO) ON DELETE CASCADE;
ALTER TABLE peli_director ADD FOREIGN KEY (TITULO) REFERENCES pelicula(TITULO) ON DELETE CASCADE;

ALTER TABLE peli_actor ADD FOREIGN KEY (NOMBRE) REFERENCES actor(NOMBRE) ON DELETE CASCADE;
ALTER TABLE peli_director ADD FOREIGN KEY (nombre) REFERENCES director(nombre) ON DELETE CASCADE;
