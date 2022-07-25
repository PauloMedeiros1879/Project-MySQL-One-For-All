DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artista(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  artista VARCHAR(100) NOT NULL
) engine=InnoDB;

CREATE TABLE SpotifyClone.album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) engine=InnoDB;

INSERT INTO SpotifyClone.artista(artista) 
VALUES 
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO SpotifyClone.album(album, artista_id)
VALUES 
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);