DROP DATABASE IF EXISTS ProyectoSO;
CREATE DATABASE ProyectoSO;-- Creamos base de datos

USE ProyectoSO;-- seleccionamos nuestra nueva BBDD

CREATE TABLE Jugador(
	Username VARCHAR(30) PRIMARY KEY NOT NULL,
	Passwd VARCHAR(40) NOT NULL,
	Nombre TEXT
)ENGINE = InnoDB;

CREATE TABLE Games(
	Game_ID INT NOT NULL,
	Username_Player1 VARCHAR(30) NOT NULL,
	Username_Player2 VARCHAR(40) NOT NULL,
	Score_Player1 INT NOT NULL,
	Score_Player2 INT NOT NULL,
	PRIMARY KEY(Game_ID),
	FOREIGN KEY (Username_Player1) REFERENCES Jugador(Username),
	FOREIGN KEY (Username_Player2) REFERENCES Jugador(Username)
)ENGINE = InnoDB;



INSERT INTO Jugador VALUES('Roger01','password','Roger');
INSERT INTO Jugador VALUES('Sergi02','prueba01','Sergi');
INSERT INTO Jugador VALUES('Roberto03','12345678','Roberto');

INSERT INTO Games VALUES (1,'Roger01','Sergi02',10,5);
INSERT INTO Games VALUES (2,'Roberto03','Sergi02',5,10);
INSERT INTO Games VALUES (3,'Roger01','Roberto03',0,4);
INSERT INTO Games VALUES (4,'Roger01','Sergi02',20,5);
INSERT INTO Games VALUES (5,'Roberto03','Sergi02',52,10);
INSERT INTO Games VALUES (6,'Roger01','Roberto03',10,4);
