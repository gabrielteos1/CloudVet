CREATE DATABASE CloudVet
go

Use CloudVet
go

create table Mascota
(
CodigoMas varchar(10) NOT NULL,
 NombreMas varchar(50),
 CodigoDueño varchar(10) NOT NULL,
 especie varchar(20),
 edad varchar (10),
 peso varchar (10),
 genero varchar (10),
 PRIMARY KEY (CodigoMas)
);
GO
create table Dueño
(
CodigoDueño varchar(10) NOT NULL,
 NombreDue varchar(100),
 Direccion varchar(max),
 Telefono varchar(20)
 PRIMARY KEY (CodigoDueño)
);
GO
ALTER TABLE Mascota
ADD FOREIGN KEY (CodigoDueño) REFERENCES Dueño(CodigoDueño);
GO
create table Registro
(
CodigoMas varchar(10) NOT NULL,
 Procedimiento varchar(max),
 DiaCita Date,
 Medicamento varchar(100)
);
GO
create table Citas
(
 DiaCita date,
 Hora varchar(10),
 CodigoDueño varchar(10) NOT NULL,
 CodigoMas varchar(10) NOT NULL
 PRIMARY KEY (DiaCita)
);
GO
ALTER TABLE Registro
ADD FOREIGN KEY (DiaCita) REFERENCES Citas(DiaCita);
GO
ALTER TABLE Registro
ADD FOREIGN KEY (CodigoMas) REFERENCES Mascota(CodigoMas);
GO
ALTER TABLE Citas
ADD FOREIGN KEY (CodigoMas) REFERENCES Mascota(CodigoMas);
GO
ALTER TABLE Citas
ADD FOREIGN KEY (CodigoDueño) REFERENCES Dueño(CodigoDueño);
GO