CREATE DATABASE CloudVet
go

Use CloudVet
go

create table mascotas
(
 IdMascota varchar(10) NOT NULL,
 NombreMascota varchar(50),
 Especie varchar(20),
 Edad varchar (10),
 Peso varchar (10),
 Genero varchar (10),
);
GO
ALTER TABLE mascotas
ADD CONSTRAINT PK_idMascota
PRIMARY KEY (idMascota)
GO
create table Due�os
(
 IdDue�o varchar(10) NOT NULL,
 NombreDue�o varchar(100),
 Direccion varchar(max),
 Telefono varchar(20)
);
GO
ALTER TABLE Due�os
ADD CONSTRAINT PK_IdDue�o
PRIMARY KEY (IdDue�o)
GO

create table Consulta
(
IdConsulta varchar(10) NOT NULL,
 IdMascota varchar(10),
 Diagnostico varchar(max),
 DiaCita Date,
 Medicamento varchar(100)
);
GO
ALTER TABLE Consulta
ADD CONSTRAINT PK_IdConsulta
PRIMARY KEY (IdConsulta)
GO
create table Cita
(
IdCita varchar(10) NOT NULL,
 DiaCita date,
 Hora varchar(15),
 IdDue�o varchar(10),
 IdMascota varchar(10),
 IdConsulta varchar(10)
);
GO
ALTER TABLE Cita
ADD CONSTRAINT PK_IdCita
PRIMARY KEY (IdCita)
GO
Create table Pago
(
IdPago varchar(10) NOT NULL,
IdDue�o varchar(10),
IdConsulta varchar(10),
TotalPago int
);
GO
ALTER TABLE Pago
ADD CONSTRAINT PK_IdPago
PRIMARY KEY (IdPago)
GO

ALTER TABLE Cita 
ADD CONSTRAINT fk_IdMascota
FOREIGN KEY (IdMascota) REFERENCES Mascotas(IdMascota)
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE Cita 
ADD CONSTRAINT fk_IdDue�o
FOREIGN KEY (IdDue�o) REFERENCES Due�os(IdDue�o)
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE Cita 
ADD CONSTRAINT fk_IdConsulta
FOREIGN KEY (IdConsulta) REFERENCES Consulta(IdConsulta)
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE Pago
ADD CONSTRAINT fk_IdDue�oP
FOREIGN KEY (IdDue�o) REFERENCES Due�os(IdDue�o)
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE Pago
ADD CONSTRAINT fk_IdConsultaP
FOREIGN KEY (IdConsulta) REFERENCES Consulta(IdConsulta)
ON DELETE CASCADE
ON UPDATE CASCADE
GO
ALTER TABLE Consulta 
ADD CONSTRAINT fk_IdMascotasC
FOREIGN KEY (IdMascota) REFERENCES Mascotas(IdMascota)
GO