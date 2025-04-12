CREATE TABLE Tb_alumnos (
    carnet VARCHAR(20) PRIMARY KEY, -- Carnet del estudiante (llave primaria)
    Estudiante NVARCHAR(255) NOT NULL, -- Nombre completo del estudiante
    email NVARCHAR(255) NOT NULL, -- Correo electrónico del estudiante
    seccion CHAR(1) NOT NULL -- Sección a la que pertenece el estudiante
);


-- Datos de la tabla Tb_alumnos
INSERT INTO Tb_alumnos (carnet, Estudiante, email, seccion) VALUES
('0905-10-1279', 'NERY OSBERTO ESQUIVEL PALMA', 'nesquivelp1@miumg.edu.gt', 'A'),
('0905-15-9622', 'JERY ALEXANDER BARRIENTOS PERAZA', 'jbarrientosp@miumg.edu.gt', 'A'),
('0905-15-14297', 'MARIO DAVID TERETA SAPALUN', 'mteretas@miumg.edu.gt', 'A'),
('0905-18-4689', 'FERNANDO JOSE VASQUEZ GONZALEZ', 'fvasquezg7@miumg.edu.gt', 'A'),
('0905-19-6478', 'MARVIN ISMAEL RECINOS MAZARIEGOS', 'mrecinosm9@miumg.edu.gt', 'A'),
('0905-20-5562', 'CRISTIAN ALEXANDER CASTILLO CASTILLO', 'ccastilloc10@miumg.edu.gt', 'A'),
('0905-22-5811', 'MILDRED HANANI PINEDA PINEDA', 'mpinedap3@miumg.edu.gt', 'A'),
('0905-23-796', 'HECTOR LUIS GUSTAVO MELLADO SARCENO', 'hmellados@miumg.edu.gt', 'A'),
('0905-23-18976', 'CARLOS FERNANDO MELGAR CORADO', 'cmelgarc4@miumg.edu.gt', 'A'),
('0905-24-1925', 'JEINER ANDY JOSUE PINEDA CORLETO', 'jpinedac17@miumg.edu.gt', 'A'),
('0905-24-2654', 'ERICK MOISES ARTURO SANDOVAL PALMA', 'esandovalp9@miumg.edu.gt', 'A'),
('0905-24-3068', 'FERNANDO JOSE VEGA GUDIEL', 'fvegag1@miumg.edu.gt', 'A'),
('0905-24-3086', 'JOSE LEONEL CRUZ LOPEZ', 'jcruzl20@miumg.edu.gt', 'A'),
('0905-24-3576', 'JOSE CARLOS CRUZ FLORIAN', 'jcruzf6@miumg.edu.gt', 'A'),
('0905-24-4847', 'CRISTIAN JOSUE FLORES PLEITEZ', 'cfloresp5@miumg.edu.gt', 'A'),
('0905-24-5045', 'MELANY ROSMERY PEREZ ORANTES', 'mperezo37@miumg.edu.gt', 'A'),
('0905-24-5051', 'ESTALIN ALEJANDRO GODOY CAMPOS', 'egodoyc4@miumg.edu.gt', 'A'),
('0905-24-5388', 'OSCAR GUILLERMO SANDOVAL GARCIA', 'osandovalg1@miumg.edu.gt', 'A'),
('0905-24-5462', 'JOSUE RAFAEL PEREZ AGUIRRE', 'jpereza62@miumg.edu.gt', 'A'),
('0905-24-6263', 'ADRIANA STEPHANIA LOPEZ LARA', 'alopezl90@miumg.edu.gt', 'A'),
('0905-24-6339', 'JOAN NATALIE CAMILA MARTINEZ REYES', 'jmartinezr30@miumg.edu.gt', 'A'),
('0905-24-6375', 'TAHLY YULIANA JIMENEZ BOTEO', 'tjimenezb@miumg.edu.gt', 'A'),
('0905-24-6913', 'EDWINS JOSUE ARGUETA DUARTE', 'earguetad2@miumg.edu.gt', 'A'),
('0905-24-7000', 'GERSON LEONEL JIMENEZ GONZALEZ', 'gjimenezg9@miumg.edu.gt', 'A'),
('0905-24-7010', 'CARLO RENE HERMOGENES RIVERA ESTRADA', 'criverae2@miumg.edu.gt', 'A'),
('0905-24-7370', 'JOSE CARLOS MORATAYA ENRIQUE', 'jmoratayae1@miumg.edu.gt', 'A'),
('0905-24-7854', 'ARANZA BRIGITTE RUEDA ALVARADO', 'aruedaa@miumg.edu.gt', 'A'),
('0905-24-8364', 'JUAN LUIS MOLINA ORELLANA', 'jmolinao1@miumg.edu.gt', 'A'),
('0905-24-9756', 'LUIS ANGEL SANTIAGO PALMA', 'lsantiagop1@miumg.edu.gt', 'A'),
('0905-24-11747', 'ANTONY EZEQUIEL PINEDA PINEDA', 'apinedap10@miumg.edu.gt', 'A'),
('0905-24-16186', 'EDGAR EMANUEL VALENZUELA PINTO', 'evalenzuelap4@miumg.edu.gt', 'A'),
('0905-24-19556', 'PEDRO JOSE MARROQUIN GONZALEZ', 'pmarroquing5@miumg.edu.gt', 'A'),
('0905-24-21379', 'DIEGO ANDRES ESCOBAR AGUILAR', 'descobara11@miumg.edu.gt', 'A'),
('0905-24-22482', 'ANGELLO D MARCO ESCOBAR GONZALEZ', 'aescobarg21@miumg.edu.gt', 'A'),
('0905-24-22750', 'LESTER DAVID PAYES MENDEZ', 'lpayesm@miumg.edu.gt', 'A'),
('0905-24-23552', 'DEIVID ALBERTO GUERRA CARPIO', 'dguerrac7@miumg.edu.gt', 'A'),
('0905-17-20273', 'SERGIO ANDRES CASTELLANOS SARCENO', 'scastellanoss1@miumg.edu.gt', 'B'),
('0905-21-4966', 'PABLO ALEXANDER GRIJALVA BARAHONA', 'pgrijalvab@miumg.edu.gt', 'B'),
('0905-21-9650', 'FERNANDO ENRIQUE JOSE NAJERA GODOY', 'fnajerag@miumg.edu.gt', 'B'),
('0905-22-1146', 'EDUARDO GABRIEL VISONI MORALES', 'evisonim@miumg.edu.gt', 'B'),
('0905-22-7933', 'JOAQUIN MANUEL ESTUARDO RAMIREZ VEGA', 'jramirezv16@miumg.edu.gt', 'B'),
('0905-22-9918', 'DAYLY YURISEL ORELLANA ORELLANA', 'dorellanao4@miumg.edu.gt', 'B'),
('0905-22-11274', 'LEYVI LORENA REVOLORIO Y REVOLORIO', 'llorena@miumg.edu.gt', 'B'),
('0905-23-302', 'CRISTIAN OLIVER BATEN ITZEP', 'cbateni1@miumg.edu.gt', 'B'),
('0905-23-2991', 'JOSTYN MANRRIQUE GODOY CHINCHILLA', 'jgodoyc15@miumg.edu.gt', 'B'),
('0905-23-13800', 'MARIO JOSE BARRERA LINAREZ', 'mbarreral4@miumg.edu.gt', 'B'),
('0905-23-15220', 'ABNER JOEL MATEO HERNANDEZ', 'amateroh@miumg.edu.gt', 'B'),
('0905-23-15654', 'NERY DANIEL VASQUEZ Y VASQUEZ', 'nvasquezy1@miumg.edu.gt', 'B'),
('0905-23-20562', 'ODVIN ALEXIS MENDEZ LEMUS', 'omendezl4@miumg.edu.gt', 'B'),
('0905-24-1631', 'ELDER EZEQUIEL PEREZ Y PEREZ', 'eperezy7@miumg.edu.gt', 'B'),
('0905-24-1699', 'ANDY RENE NAJERA AGUIRRE', 'anajeraa2@miumg.edu.gt', 'B'),
('0905-24-4036', 'CELSO GABRIEL SARCENO CORADO', 'csarcenoc1@miumg.edu.gt', 'B'),
('0905-24-6495', 'JOSUE DAVID PANIAGUA OLIVARES', 'jpaniaguao@miumg.edu.gt', 'B'),
('0905-24-6503', 'MARIO EDUARDO RIVERA SALGUERO', 'mriveras10@miumg.edu.gt', 'B'),
('0905-24-10033', 'LITZI YASMIRA PINEDA CERMENO', 'lpinedac7@miumg.edu.gt', 'B'),
('0905-24-10061', 'JOSE ALFONSO LINARES MUNOZ', 'jlinaresm3@miumg.edu.gt', 'B'),
('0905-24-10433', 'JORGE MARIO CANO COBON', 'jcanoc5@miumg.edu.gt', 'B'),
('0905-24-11709', 'KATHYA SOFIA MELGAR MARROQUIN', 'kmelgarm2@miumg.edu.gt', 'B'),
('0905-24-12088', 'JEFERSON OSLEE CERMENO PINEDA', 'jcermenop2@miumg.edu.gt', 'B'),
('0905-24-12697', 'DILENA IRENA GRIJALVA TENAS', 'dgrijalvat1@miumg.edu.gt', 'B'),
('0905-24-13926', 'LEBINSON DAVID GARCIA CASTILLO', 'lgarciac58@miumg.edu.gt', 'B'),
('0905-24-14875', 'JUAN DANIEL BARRERA OSUNA', 'jbarrerao4@miumg.edu.gt', 'B'),
('0905-24-15036', 'ANGEL EDUARDO CERMENO GARCIA', 'acermenog@miumg.edu.gt', 'B'),
('0905-24-15384', 'ANDREA FERNANDA RONQUILLO GODOY', 'aronquillog2@miumg.edu.gt', 'B'),
('0905-24-16058', 'TANIA ANDREA MIRANDA RAMIREZ', 'tmirandar@miumg.edu.gt', 'B'),
('0905-24-16433', 'ROBERTSON ALESSANDRO MUNOZ PAREDES', 'rmunozp1@miumg.edu.gt', 'B'),
('0905-24-17488', 'JOSE MARIO ROSALES PALMA', 'jrosalesp16@miumg.edu.gt', 'B'),
('0905-24-17495', 'RONALD ANTONIO AROCHE SANTOS', 'raroches1@miumg.edu.gt', 'B'),
('0905-24-17512', 'FRANYER NOE CONTRERAS ZEPEDA', 'fcontrerasz@miumg.edu.gt', 'B'),
('0905-24-17570', 'GEOFREY EMMANUEL FLORIAN ESQUIVEL', 'gfloriane@miumg.edu.gt', 'B'),
('0905-24-22282', 'JHONY ABRAHAM DE LEON PEREZ', 'jdeleonp29@miumg.edu.gt', 'B'),
('0905-24-22303', 'ARLIN GUISEL CASTILLO CERMENO', 'acastilloc31@miumg.edu.gt', 'B'),
('0905-24-24315', 'MARIANA ALEJANDRA GARCIA HERNANDEZ', 'mgarciah30@miumg.edu.gt', 'B');



/// notas

CREATE TABLE tareas (
    id_tarea INT IDENTITY(1,1) PRIMARY KEY, -- Correlativo autoincrementable, llave primaria
    Carnet VARCHAR(20) NOT NULL, -- Carnet del estudiante (llave foránea)
    nota1 INT NOT NULL, -- Nota 1
    nota2 INT NOT NULL, -- Nota 2
    nota3 INT NOT NULL, -- Nota 3
    nota4 INT NOT NULL, -- Nota 4
    CONSTRAINT FK_tareas_Tb_alumnos FOREIGN KEY (Carnet) REFERENCES Tb_alumnos(carnet) -- Relación con Tb_alumnos
);


-- Datos de la tabla tareas
INSERT INTO tareas (Carnet, nota1, nota2, nota3, nota4) VALUES
('0905-10-1279', 81, 67, 82, 81),
('0905-15-9622', 10, 33, 27, 42),
('0905-15-14297', 71, 56, 34, 90),
('0905-18-4689', 89, 23, 90, 28),
('0905-19-6478', 64, 42, 20, 85),
('0905-20-5562', 41, 26, 13, 19),
('0905-22-5811', 67, 36, 67, 15),
('0905-23-796', 36, 61, 81, 29),
('0905-23-18976', 46, 91, 65, 30),
('0905-24-1925', 63, 48, 67, 94),
('0905-24-2654', 64, 46, 98, 66),
('0905-24-3068', 30, 62, 34, 50),
('0905-24-3086', 29, 55, 77, 79),
('0905-24-3576', 97, 90, 46, 85),
('0905-24-4847', 58, 74, 47, 75),
('0905-24-5045', 96, 52, 80, 72),
('0905-24-5051', 35, 91, 16, 68),
('0905-24-5388', 93, 55, 87, 81),
('0905-24-5462', 87, 52, 18, 37),
('0905-24-6263', 42, 63, 87, 98),
('0905-24-6339', 30, 66, 23, 88),
('0905-24-6375', 50, 41, 35, 81),
('0905-24-6913', 48, 48, 33, 25),
('0905-24-7000', 48, 88, 68, 91),
('0905-24-7010', 66, 24, 45, 49),
('0905-24-7370', 13, 15, 30, 28),
('0905-24-7854', 11, 36, 51, 13),
('0905-24-8364', 33, 73, 24, 51),
('0905-24-9756', 57, 19, 26, 39),
('0905-24-11747', 71, 50, 29, 46),
('0905-24-16186', 89, 61, 42, 46),
('0905-24-19556', 70, 84, 83, 18),
('0905-24-21379', 21, 74, 33, 92),
('0905-24-22482', 23, 76, 76, 89),
('0905-24-22750', 23, 55, 87, 65),
('0905-24-23552', 68, 51, 42, 54),
('0905-17-20273', 41, 49, 34, 57),
('0905-21-4966', 52, 19, 52, 92),
('0905-21-9650', 95, 41, 48, 44),
('0905-22-1146', 30, 25, 67, 11),
('0905-22-7933', 27, 58, 62, 80),
('0905-22-9918', 86, 40, 40, 11),
('0905-22-11274', 95, 67, 60, 73),
('0905-23-302', 26, 29, 10, 92),
('0905-23-2991', 67, 82, 97, 89),
('0905-23-13800', 79, 27, 27, 76),
('0905-23-15220', 22, 34, 20, 25),
('0905-23-15654', 54, 46, 24, 27),
('0905-23-20562', 87, 73, 33, 46),
('0905-24-1631', 43, 10, 29, 28),
('0905-24-1699', 82, 22, 31, 11),
('0905-24-4036', 41, 58, 64, 56),
('0905-24-6495', 50, 36, 44, 55),
('0905-24-6503', 25, 47, 41, 10),
('0905-24-10033', 50, 55, 76, 62),
('0905-24-10061', 50, 13, 94, 68),
('0905-24-10433', 30, 57, 93, 54),
('0905-24-11709', 69, 95, 69, 62),
('0905-24-12088', 41, 70, 51, 95),
('0905-24-12697', 94, 15, 82, 86),
('0905-24-13926', 21, 67, 16, 46),
('0905-24-14875', 11, 43, 50, 34),
('0905-24-15036', 57, 29, 97, 99),
('0905-24-15384', 79, 24, 32, 69),
('0905-24-16058', 94, 81, 60, 47),
('0905-24-16433', 75, 39, 54, 87),
('0905-24-17488', 84, 62, 69, 75),
('0905-24-17495', 62, 95, 55, 16),
('0905-24-17512', 17, 88, 34, 43),
('0905-24-17570', 31, 29, 85, 71),
('0905-24-22282', 60, 19, 71, 62),
('0905-24-22303', 77, 95, 41, 24),
('0905-24-24315', 47, 69, 33, 25);

INSERT INTO tareas (Carnet, notal, nota2, nota3, nota4) VALUES
('0905-10-1279', 81, 67, 82, 81),
-- ... (todos los demás registros proporcionados)
('0905-24-24315', 47, 69, 33, 25);
TABLAS NUEVAS
CREATE TABLE asistencia (
id_asistencia INT IDENTITY(1,1) PRIMARY KEY,
Carnet VARCHAR(20) FOREIGN KEY REFERENCES Tb alumnos(carnet),
fecha DATE NOT NULL,
presente CHAR(1) CHECK (presente IN ('S', 'N"))
);

INSERT INTO asistencia (Carnet, fecha, presente) VALUES
('0905-10-1279", '2023-03-01', 'S'),
('0905-15-9622', '2023-03-01', 'N' ),
('0905-17-20273', '2023-03-02', 'S'),
('0905-21-4966', '2023-03-02', 'S' ),
'0905-24-24315', '2023-03-03', 'N');

CREATE TABLE notas_finales (
id_nota_final INT IDENTITY(1,1) PRIMARY KEY,
Carnet VARCHAR(20) FOREIGN KEY REFERENCES Tb_alumnos(carnet),
nota_final DECIMAL(5,2)
);
INSERT INTO notas finales (Carnet, nota final) VALUES
('0905-10-1279', 81.5),
('0905-15-9622', 84.25),
('0905-17-20273', 88.75),
('0905-21-4966', 85.75),
('0905-24-24315', 88.75);

UPDATE Tb_alumnos
SET seccion
CASE
WHEN seccion = 'A' THEN 'B"
WHEN seccion = 'B' THEN 'A"
ELSE seccion
END;

SELECT * FROM Tb_alumnos;

SELECT * FROM Tb_alumnos WHERE seccion = 'A';

SELECT a.carnet, a. Estudiante, t.nota1, t.nota2, t.nota3, t.nota4
FROM Tb alumnos a
JOIN tareas t ON a.carnet = t.carnet;

UPDATE notas_finales
SET nota_final = 90.00
WHERE carnet = '0905-10-1279';

DELETE FROM asistencia
WHERE id asistencia = 2;





SELECT
a. Estudiante,
MAX(asist.fecha) AS ultima_asistencia,
CASE
WHEN MAX(CASE WHEN asist.presente = 'S' THEN 1 ELSE 0 END) = 1
THEN 'Presente'
ELSE 'Ausente'
END AS estado,
nf.nota final
FROM
Tb_alumnos a
LEFT JOIN
asistencia asist ON a.carnet = asist. Carnet
LEFT JOIN
notas finales nf ON a.carnet = nf.Carnet
GROUP BY
a.carnet,
a. Estudiante,
nf.nota final
ORDER BY
a.Estudiante;

CREATE TABLE alumnos_temp (
    carnet VARCHAR(20),
    Estudiante NVARCHAR(255),
    email NVARCHAR(255),
    seccion CHAR(1)
);

