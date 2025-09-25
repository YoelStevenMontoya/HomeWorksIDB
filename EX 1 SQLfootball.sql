CREATE TABLE Entrenador(
	idEntrenador INT PRIMARY KEY,
	nombre VARCHAR(100)
);

CREATE TABLE Equipo(
	idEquipo INT PRIMARY KEY,
	nombre VARCHAR(100),
	UbPais VARCHAR(100),
	UbCiudad VARCHAR(100),
	idEntrenador INT,
	FOREIGN KEY (idEntrenador) REFERENCES Entrenador(idEntrenador)
);

CREATE TABLE Jugador(
	idJugador INT PRIMARY KEY,
	nombre VARCHAR(100),
	edad INT,
	idEquipo INT,
	idPosicion INT,
	FOREIGN KEY (idEquipo) REFERENCES Equipo(idEquipo),
	FOREIGN KEY (idPosicion) REFERENCES Posicion(idPosicion)
);

CREATE TABLE Posicion(
	idPosicion INT,
	nombre VARCHAR(50)
);

CREATE TABLE Partido(
	idPartido INT PRIMARY KEY,
	fecha DATE,
	lugar VARCHAR(150)
);

CREATE TABLE Puntaje(
	idPuntaje INT PRIMARY KEY,
	totalPuntos INT,
	idPartido INT,
	FOREIGN KEY (idPartido) REFERENCES Partido(idPartido)
);

CREATE TABLE Logro(
	idLogro INT PRIMARY KEY,
	descripcion TEXT,
	idJugador INT,
	FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador)
);

CREATE TABLE EntrenadorEquipoJugadorPartido(
	idEntrenador INT,
	idEquipo INT,
	idJugador INT,
	idPartido INT,
	PRIMARY KEY(idEntrenador, idEquipo, idJugador, idPartido),
	FOREIGN KEY (idEntrenador) REFERENCES Entrenador(idEntrenador),
	FOREIGN KEY (idEquipo) REFERENCES Equipo(idEquipo),
	FOREIGN KEY (idJugador) REFERENCES Jugador(idJugador),
	FOREIGN KEY (idPartido) REFERENCES Partido(idPartido)
);
