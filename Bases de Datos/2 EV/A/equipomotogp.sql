create database if not exists equipomotogp;
use equipomotogp;

DROP TABLE IF EXISTS mecanico_moto;
DROP TABLE IF EXISTS mecanico;
DROP TABLE IF EXISTS sector;
DROP TABLE IF EXISTS moto;
DROP TABLE IF EXISTS piloto;
DROP TABLE IF EXISTS equipo;
DROP TABLE IF EXISTS boxx;

CREATE TABLE IF NOT EXISTS boxx(
  id_box INTEGER PRIMARY KEY,
  tamanyo INTEGER);

CREATE TABLE IF NOT EXISTS equipo(
  id_equipo INTEGER PRIMARY KEY,
  nombre VARCHAR(15) NOT NULL,
  num_mecanicos INTEGER NOT NULL,
  anyo_fundado VARCHAR(4) NOT NULL);

CREATE TABLE IF NOT EXISTS piloto(
  dni_piloto VARCHAR(9) PRIMARY KEY,
  altura INTEGER NOT NULL,
  primera_temporada DATE,
  id_equipo INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS moto(
  bastidor_moto VARCHAR(5) PRIMARY KEY,
  cilindrada INTEGER NOT NULL,
  id_equipo INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS sector(
  nom_sector VARCHAR(15) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS mecanico(
  dni_mecanico VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(15) NOT NULL,
  edad INTEGER NOT NULL,
  sector VARCHAR(15) NOT NULL);

CREATE TABLE IF NOT EXISTS mecanico_moto(
  dni_mecanico VARCHAR(9) NOT NULL,
  bastidor_moto VARCHAR(5) NOT NULL);

ALTER TABLE piloto ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo) ON DELETE RESTRICT;
ALTER TABLE album ADD FOREIGN KEY (genero) REFERENCES genero(nom_genero) ON DELETE RESTRICT;