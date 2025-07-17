--Crear base de datos
CREATE DATABASE  empresapatito;
Go

use empresapatito;
Go 

--Crear una tabla empleados
CREATE TABLE empleados(
Idempleado int not null,
Nombre VARCHAR (100) not null, 
Puesto VARCHAR (50) null,
FechaIngreso DATE null, 
Salario DECIMAL (10,2),

CONSTRAINT  pk_empleados
PRIMARY KEY (Idempleado)
);
GO


-- Agregar una columna en la tabla empleados
ALTER TABLE empleados  
ADD CorreoElectronico VARCHAR(100);
GO
SELECT * FROM empleados;

--Modificar el tipo de dato de un campo 
ALTER TABLE empleados
ALTER COLUMN Salario money not null;

--Renombrar un campo 
EXEC sp_rename 'empleados.Emial',
               'Email','COLUMN';

GO

--Crear tabla departamentos 
CREATE TABLE  departamentos (
IdDepartamento INT not null identity(1,1) PRIMARY KEY,
NombreDepto varchar(100)

);

--Agregar un campo a la tabla empleados, para  que sea una foreign key 
ALTER TABLE empleados 
ADD IdDepartamento int not null;


--Agregar llave foranea 
Alter table Empleados
ADD CONSTRAINT fk_Empleados_departementos
FOREIGN KEY (IdDepartamento)
REFERENCES Departamentos(IdDepartamento);

--eliminar LA CLAVE PRIMARIA DE EMPLEADOS 
ALTER TABLE Empleados 
DROP   CONSTRAINT  pk_empleados;

GO

--Elimar la foreig key de la tabla empleados 
ALTER TABLE Empleados 
DROP CONSTRAINT  fk_Empleados_departementos;

-- Eliminar la primary key de departamento
ALTER TABLE departamentos
DROP CONSTRAINT PK__departam__787A433DB3D16462;

--Crear un CONSTRAINT DE VERIFICACION EN SALARIO 
ALTER TABLE Empleados
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);
Go



CREATE TABLE Categoria (
Id int not null PRIMARY KEY DEFAULT -1, 
Nombre VARCHAR (20),
estatus char(1) DEFAULT  'A'

);

GO

INSERT INTO Categoria
VALUES (1,'Carnes','D');
SELECT * FROM Categoria

INSERT INTO Categoria
VALUES (DEFAULT,'Carnes',Default);




DROP TABLE Categoria;

--Eliminar la columna EMAIL
ALTER TABLE Empleados 
DROP COLUMN Email;

ALTER TABLE Empleados 
ADD CONSTRAINT  pk_empleados
PRIMARY KEY (Idempleado)
GO

ALTER TABLE Departamentos
ADD CONSTRAINT  pk_departamentos
PRIMARY KEY (IdDepartamento)
GO

DROP TABLE empleados;
DROP TABLE departamentos;

use master;


--ELIMINAR BD 
DROP DATABASE empresapatito;