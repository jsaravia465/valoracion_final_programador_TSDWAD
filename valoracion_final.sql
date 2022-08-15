CREATE DATABASE veterinaria;

use veterinaria;

CREATE TABLE Dueno (
    DNI INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR (100) NOT NULL, 
    Apellido VARCHAR (100) NOT NULL,
    Telefono VARCHAR (100) NOT NULL,
    Direccion VARCHAR (100) NOT NULL
);



CREATE TABLE perro (
    ID_Perro INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre VARCHAR (100) NOT NULL, 
    Fecha_nac DATE NOT NULL,
    Sexo VARCHAR (1) NOT NULL,
    DNI_Dueno INT NOT NULL,
    CONSTRAINT  FK_DNI_DUENO
	  FOREIGN KEY (DNI_Dueno)
	  REFERENCES dueno(DNI)
	  ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE historial (
    ID_Historial INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Fecha_nac DATE NOT NULL,
    Perro INT UNSIGNED NOT NULL,
    Descripcion VARCHAR (100) NOT NULL,
    Monto DOUBLE NOT NULL,
    CONSTRAINT  FK_PERRO
	  FOREIGN KEY (Perro)
	  REFERENCES perro(ID_Perro)
	  ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


INSERT INTO `veterinaria`.`dueno`
(`DNI`,
`Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES
(31547890,
"Gerardo",
"Saravia",
"3875817605",
"Salta, capital");

INSERT INTO `veterinaria`.`perro`
(
`Nombre`,
`Fecha_nac`,
`Sexo`,
`DNI_Dueno`)
VALUES
("yayo",
STR_TO_DATE('13,8,2022','%d,%m,%Y'),
"M",
31547890);

INSERT INTO `veterinaria`.`historial`
(`Fecha`,
`Perro`,
`Descripcion`,
`Monto`)
VALUES
(STR_TO_DATE('13,8,2022','%d,%m,%Y'),
2,
"Se le coloco una vacuna",
1000);

UPDATE `veterinaria`.`perro`
SET
`Fecha_nac` = STR_TO_DATE('13,8,2015','%d,%m,%Y')
WHERE `ID_Perro` = 2;



