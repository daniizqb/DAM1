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
  dni_piloto VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(20) NOT NULL,
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
  dni_mecanico VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(15) NOT NULL,
  edad INTEGER NOT NULL,
  sector VARCHAR(15) NOT NULL);

CREATE TABLE IF NOT EXISTS mecanico_moto(
  dni_mecanico VARCHAR(10) NOT NULL,
  bastidor_moto VARCHAR(5) NOT NULL,
  PRIMARY KEY (dni_mecanico,bastidor_moto));

ALTER TABLE piloto ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo) ON DELETE RESTRICT;
ALTER TABLE moto ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo) ON DELETE RESTRICT;
ALTER TABLE mecanico ADD FOREIGN KEY (sector) REFERENCES sector(nom_sector) ON DELETE RESTRICT;

INSERT INTO BOXX VALUES
('4141','23'),
('5151','25'),
('1411','15'),
('6474','43'),
('4166','34'),
('7342','54'),
('4613','65'),
('9632','15'),
('6522','19'),
('8946','24'),
('3227','37'),
('8621','50'),
('2572','26'),
('8241','70'),
('4151','67'),
('3841','23'),
('7241','69'),
('2578','78'),
('1567','69'),
('1611','66'),
('4239','98'),
('2272','40'),
('5969','89'),
('1156','77'),
('6261','88');

INSERT INTO EQUIPO VALUES
('315434','Honda','195','1978'),
('242141','Honda Japon','32','1988'),
('615151','Honda Italia','95','1980'),
('716711','Yamaha','103','1991'),
('251451','Yamaha Japon','76','1975'),
('098737','Yamaha Alemania','73','1989'),
('554213','Yamaha Francia','64','1987'),
('541541','Ducati','130','1976'),
('738357','Ducati Corsa','205','1983'),
('983733','Ducati Pramac','160','1987'),
('316363','Aprillia','72','1984'),
('622522','Aprillia Suecia','63','1997'),
('772622','Suzuki','146','1999'),
('141688','Suzuki Japon','90','1992'),
('748489','KTM','162','1989'),
('324632','KTM Tec 3','98','1993'),
('673622','KTM Suiza','93','2000'),
('168444','Kawasaki','240','1988'),
('026262','Kawasaki Ninja','136','1979'),
('883721','MV Augusta','94','1995');

INSERT INTO PILOTO VALUES
('650387844X','Alex Rins','182','2014_01_01','772622'),
('452511336C','Iker Lecuona','172','2015_01_01','748489'),
('161561515Y','Marc Marquez','176','2013_01_01','315434'),
('424188741H','Alex Marquez','180','2005_01_01','242141'),
('515114314T','Pol Espargaro','168','2010_01_01','315434'),
('873763637G','Aleix Espargaro','182','2012_01_01','316363'),
('254626262T','Maveric Vinyales','173','2016_01_01','316363'),
('837364635K','Raul Fernandez','177','2022_01_01','324632'),
('676262722D','Remy Gardner','182','2022_01_01','324632'),
('983766363G','Fabio Quartararo','174','2019_01_01','716711'),
('837352267X','Jorge Martin','178','2019_01_01','983733'),
('526255231Q','Johan Zarco','184','2012_01_01','983733'),
('525262622M','Peco Bagniaia','182','2018_01_01','541541'),
('630387844X','Joan Mir','176','2017_01_01','772622'),
('676262621G','Marco Bezzequi','182','2018_01_01','251451');

INSERT INTO MOTO VALUES
('H4141','1000','315434'),
('H4641','1000','242141'),
('H4741','1000','615151'),
('H5641','1000','716711'),
('H2514','1000','251451'),
('Y4141','1000','098737'),
('Y7141','1000','554213'),
('Y7641','1000','541541'),
('Y9841','1000','738357'),
('D4141','1000','983733'),
('D8541','1000','316363'),
('D8741','1000','622522'),
('D3261','1000','772622'),
('A7341','1000','141688'),
('A8641','1000','748489'),
('K4141','1000','324632'),
('K7251','1000','673622'),
('K6341','1000','168444'),
('K6324','1000','026262'),
('K4145','1000','883721');

INSERT INTO SECTOR VALUES
('Ruedas'),
('Chasis'),
('Motor'),
('Aero'),
('Escapes');

INSERT INTO MECANICO VALUES
('653187844X','Alfonso','34','Ruedas'),
('552625116F','Eustaquip','44','Ruedas'),
('661515556M','Marcos','31','Chasis'),
('353637325G','Alvaro','24','Chasis'),
('411228783D','Victor','34','Motor'),
('983625253G','Kevin','30','Aero'),
('353472516Y','Cumbi','27','Escapes'),
('525264262T','Russel','34','Escapes'),
('141526733S','Dodi','27','Motor'),
('552525523A','Kenny','25','Ruedas');

INSERT INTO MECANICO_MOTO VALUES
('653187844X','D3261'),
('552625116F','D3261'),
('525264262T','Y7141'),
('552525523A','K4141'),
('353637325G','D4141'),
('141526733S','H4641'),
('661515556M','H2514'),
('353637325G','Y4141'),
('653187844X','A8641'),
('983625253G','K4145');