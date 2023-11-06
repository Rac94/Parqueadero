CREATE DATABASE GestionVehiculos;
USE GestionVehiculos;

CREATE TABLE Vehiculos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Placa VARCHAR(10) NOT NULL,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Color VARCHAR(20),
    Tipo VARCHAR(20),
    FechaEntrada DATETIME,
    FechaSalida DATETIME
);
CREATE TABLE Propietarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    DNI VARCHAR(15),
    Telefono VARCHAR(15)
);
ALTER TABLE Vehiculos
ADD COLUMN PropietarioID INT,
ADD CONSTRAINT FK_Propietario
FOREIGN KEY (PropietarioID)
REFERENCES Propietarios(ID);
CREATE TABLE Registros (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    VehiculoID INT,
    FechaEntrada DATETIME,
    FechaSalida DATETIME,
    Observaciones TEXT,
    FOREIGN KEY (VehiculoID) REFERENCES Vehiculos(ID)
);
