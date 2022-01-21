create database if not exists musica_examen2;
use musica_examen2;

DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS genero;
DROP TABLE IF EXISTS artista;

CREATE TABLE IF NOT EXISTS album(
  nom_album VARCHAR(45) NOT NULL,
  artista VARCHAR(45),
  genero VARCHAR(45),
  fecha date,
  PRIMARY KEY (nom_album));

CREATE TABLE IF NOT EXISTS genero(
  nom_genero VARCHAR(45) NOT NULL,
  PRIMARY KEY (nom_genero));

CREATE TABLE IF NOT EXISTS artista(
  nom_artista VARCHAR(45) NOT NULL,
  num_discos integer,
  primer_disco date,
  pais VARCHAR(45) NOT NULL,
  PRIMARY KEY (nom_artista));
  
ALTER TABLE album ADD FOREIGN KEY (artista) REFERENCES artista(nom_artista) ON DELETE RESTRICT;
ALTER TABLE album ADD FOREIGN KEY (genero) REFERENCES genero(nom_genero) ON DELETE RESTRICT;

INSERT INTO genero VALUES
("Rock"),("PopRock"),("Jazz"),("Clasica"),("Electronica"),("New Age");

INSERT INTO artista VALUES
("Pat Metheny",20,"1974_01_01","USA"),
("Pink Floyd",15,"1965_01_01","UK"),
("Camel",10,"1971_01_01","UK"),
("King Crimson",12,"1969_01_01","UK"),
("Talking Heads",20,"1974_01_01","USA"),
("David Bowie",14,"1964_01_01","UK"),
("Focus",5,"1969_01_01","Holanda"),
("Tangerine Dream",40,"1967_01_01","Alemania"),
("Mike Oldfield",20,"1968_01_01","UK"),
("Jean Michel Jarre",16,"1966_01_01","Francia");

INSERT INTO album VALUES
("Secret Story", "Pat Metheny","Jazz", "1992_01_01"),
("Still Life", "Pat Metheny", "Jazz", "1987_01_01"),
("Orchestrion", "Pat Metheny","Jazz", "2009_01_01"),
("The Dark Side of the Moon", "Pink Floyd","Rock", "1973_01_01"),
("Wish you were here", "Pink Floyd","Rock", "1975_01_01"),
("Moonmadness", "Camel", "Rock","1976_01_01"),
("Snow Goose", "Camel","Rock", "1975_01_01"),
("Red", "King Crimson","Rock", "1974_01_01"),
("Space Oddity", "David Bowie", "PopRock", "1969_01_01"),
("Phaedra", "Tangerine Dream", "Electronica","1974_01_01"),
("Rubycon", "Tangerine Dream", "Electronica","1975_01_01"),
("Ricochet", "Tangerine Dream", "Electronica","1975_01_01"),
("Incantations", "Mike Oldfield","New Age", "1978_01_01"),
("Platinum", "Mike Oldfield","New Age", "1979_01_01"),
("Tubular Bells", "Mike Oldfield","New Age", "1973_01_01"),
("Oxygene", "Jean Michel Jarre", "Electronica","1976_01_01"),
("Equinoxe", "Jean Michel Jarre","Electronica", "1978_01_01"),
("Chronologie", "Jean Michel Jarre ","Electronica", "1993_01_01");

