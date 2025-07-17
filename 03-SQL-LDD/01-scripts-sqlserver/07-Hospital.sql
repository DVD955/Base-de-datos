CREATE DATABASE SistemaHospital;
GO

USE SistemaHospital;
GO

CREATE TABLE DOCTORES (
    NumDoctor INT PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL,
    apellidopaterno NVARCHAR(50) NOT NULL,
    apellidomaterno NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE PACIENTES (
    NumPaciente INT PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL,
    apellidopaterno NVARCHAR(50) NOT NULL,
    apellidomaterno NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE ATENCION (
    NumDoctor INT NOT NULL,
      NumPaciente INT NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (NumDoctor,   NumPaciente, fecha),
    FOREIGN KEY (NumDoctor) REFERENCES DOCTORES(NumDoctor),
    FOREIGN KEY (  NumPaciente) REFERENCES PACIENTES(  NumPaciente)
);
GO
