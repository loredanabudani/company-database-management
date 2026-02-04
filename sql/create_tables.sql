CREATE TABLE Departament (
  numri INT NOT NULL,
  departemri VARCHAR(100) NOT NULL,
  PRIMARY KEY (numri)
);

CREATE TABLE Departament_Lokacion (
  departlokacion VARCHAR(100) NOT NULL,
  numri INT NOT NULL,
  PRIMARY KEY (departlokacion, numri),
  FOREIGN KEY (numri) REFERENCES Departament(numri)
);

CREATE TABLE Projekt (
  projektnumri INT NOT NULL,
  projektemri VARCHAR(100) NOT NULL,
  projektlokacion VARCHAR(100) NOT NULL,
  numri INT NOT NULL,
  PRIMARY KEY (projektnumri),
  FOREIGN KEY (numri) REFERENCES Departament(numri)
);

CREATE TABLE Punonjes (
  SSN INT NOT NULL,
  emri VARCHAR(100) NOT NULL,
  adresa VARCHAR(150),
  paga DECIMAL(10,2),
  gjinia CHAR(1),
  datelindje DATE,
  numri INT NOT NULL,
  PRIMARY KEY (SSN),
  FOREIGN KEY (numri) REFERENCES Departament(numri)
);

CREATE TABLE Vartesi (
  emervartes VARCHAR(100) NOT NULL,
  datelindje DATE,
  marredhenia VARCHAR(50),
  gjinia CHAR(1),
  SSN INT NOT NULL,
  PRIMARY KEY (emervartes, SSN),
  FOREIGN KEY (SSN) REFERENCES Punonjes(SSN)
);

CREATE TABLE Punon_Ne (
  SSN INT NOT NULL,
  projektnumri INT NOT NULL,
  ore_pune INT,
  PRIMARY KEY (SSN, projektnumri),
  FOREIGN KEY (SSN) REFERENCES Punonjes(SSN),
  FOREIGN KEY (projektnumri) REFERENCES Projekt(projektnumri)
);

CREATE TABLE Menaxhon (
  SSN INT NOT NULL,
  numri INT NOT NULL,
  date_fillimi DATE,
  PRIMARY KEY (SSN, numri),
  FOREIGN KEY (SSN) REFERENCES Punonjes(SSN),
  FOREIGN KEY (numri) REFERENCES Departament(numri)
);

