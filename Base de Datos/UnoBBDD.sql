DROP DATABASE IF EXISTS UNO;
CREATE DATABASE UNO;

USE UNO;

CREATE TABLE Jugador (
	Identificador INTEGER PRIMARY KEY NOT NULL,
	Nombre TEXT NOT NULL,
	Contraseña TEXT NOT NULL,
	Jugadas INTEGER NOT NULL
	
)ENGINE = InnoDB;

CREATE TABLE Ranking (
	Posicion INTEGER NOT NULL,
	Nombre INTEGER NOT NULL,
	ELO INTEGER NOT NULL,
	FOREIGN KEY (Nombre) REFERENCES Jugador(Identificador)
	
	
)ENGINE = InnoDB;



CREATE TABLE Partida (

	Identificador INTEGER PRIMARY KEY NOT NULL,
	Fecha TEXT NOT NULL,
	Hora TEXT NOT NULL,
	Duracion INTEGER NOT NULL,
	Ganador INTEGER NOT NULL,
	FOREIGN KEY (Ganador) REFERENCES Jugador(Identificador)

	

)ENGINE = InnoDB;

CREATE TABLE Cartas (
	Color TEXT NOT NULL,
	NUMERO TEXT NOT NULL



)ENGINE = InnoDB;

INSERT INTO Cartas VALUES('Negro','+4');
INSERT INTO Cartas VALUES('Negro','Cambia color');

INSERT INTO Cartas VALUES('Rojo','+2');
INSERT INTO Cartas VALUES('Rojo','Reverse');
INSERT INTO Cartas VALUES('Rojo','Salto');
INSERT INTO Cartas VALUES('Rojo','9');
INSERT INTO Cartas VALUES('Rojo','8');
INSERT INTO Cartas VALUES('Rojo','7');
INSERT INTO Cartas VALUES('Rojo','6');
INSERT INTO Cartas VALUES('Rojo','5');
INSERT INTO Cartas VALUES('Rojo','4');
INSERT INTO Cartas VALUES('Rojo','3');
INSERT INTO Cartas VALUES('Rojo','2');
INSERT INTO Cartas VALUES('Rojo','1');
INSERT INTO Cartas VALUES('Rojo','0');

INSERT INTO Cartas VALUES('Amarillo','+2');
INSERT INTO Cartas VALUES('Amarillo','Reverse');
INSERT INTO Cartas VALUES('Amarillo','Salto');
INSERT INTO Cartas VALUES('Amarillo','9');
INSERT INTO Cartas VALUES('Amarillo','8');
INSERT INTO Cartas VALUES('Amarillo','7');
INSERT INTO Cartas VALUES('Amarillo','6');
INSERT INTO Cartas VALUES('Amarillo','5');
INSERT INTO Cartas VALUES('Amarillo','4');
INSERT INTO Cartas VALUES('Amarillo','3');
INSERT INTO Cartas VALUES('Amarillo','2');
INSERT INTO Cartas VALUES('Amarillo','1');
INSERT INTO Cartas VALUES('Amarillo','0');

INSERT INTO Cartas VALUES('Verde','+2');
INSERT INTO Cartas VALUES('Verde','Reverse');
INSERT INTO Cartas VALUES('Verde','Salto');
INSERT INTO Cartas VALUES('Verde','9');
INSERT INTO Cartas VALUES('Verde','8');
INSERT INTO Cartas VALUES('Verde','7');
INSERT INTO Cartas VALUES('Verde','6');
INSERT INTO Cartas VALUES('Verde','5');
INSERT INTO Cartas VALUES('Verde','4');
INSERT INTO Cartas VALUES('Verde','3');
INSERT INTO Cartas VALUES('Verde','2');
INSERT INTO Cartas VALUES('Verde','1');
INSERT INTO Cartas VALUES('Verde','0');

INSERT INTO Cartas VALUES('Azul','+2');
INSERT INTO Cartas VALUES('Azul','Reverse');
INSERT INTO Cartas VALUES('Azul','Salto');
INSERT INTO Cartas VALUES('Azul','9');
INSERT INTO Cartas VALUES('Azul','8');
INSERT INTO Cartas VALUES('Azul','7');
INSERT INTO Cartas VALUES('Azul','6');
INSERT INTO Cartas VALUES('Azul','5');
INSERT INTO Cartas VALUES('Azul','4');
INSERT INTO Cartas VALUES('Azul','3');
INSERT INTO Cartas VALUES('Azul','2');
INSERT INTO Cartas VALUES('Azul','1');
INSERT INTO Cartas VALUES('Azul','0');




INSERT INTO Jugador VALUES(1,'Juan','das',43);
INSERT INTO Jugador VALUES(2,'Maria','contra',21);
INSERT INTO Jugador VALUES(3,'Pedro','seña',45);
INSERT INTO Jugador VALUES(4,'Luis','pass',57);
INSERT INTO Jugador VALUES(5,'Julia','word',96);

INSERT INTO Partida VALUES(1,'24/02/2024','11:11',53,1);
INSERT INTO Partida VALUES(2,'21/09/2021','09:54',21,3);
INSERT INTO Partida VALUES(3,'03/12/2023','18:52',74,1);
INSERT INTO Partida VALUES(4,'22/05/2023','21:00',12,4);
INSERT INTO Partida VALUES(5,'16/10/2023','22:32',5,5);


INSERT INTO Ranking VALUES(1,1,923);
INSERT INTO Ranking VALUES(2,5,900);
INSERT INTO Ranking VALUES(3,4,624);
INSERT INTO Ranking VALUES(4,3,500);
INSERT INTO Ranking VALUES(5,2,207);



