CREATE TABLE IF NOT EXISTS Departamento (
    ID INT PRIMARY KEY,
    Nome VARCHAR(35)
);

CREATE TABLE IF NOT EXISTS Periodo (
    ID INT AUTO_INCREMENT PRIMARY KEY ,
    Nome VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Curso (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(60),
);

CREATE TABLE IF NOT EXISTS Materia (
    ID INT PRIMARY KEY,
    DepartamentoID INT,
    Nome VARCHAR(30),

    FOREIGN KEY DepartamentoID REFERENCES Departamento(ID)
);

CREATE TABLE IF NOT EXISTS Professor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    DepartamentoID INT,
    Nome VARCHAR(50),

    FOREIGN KEY DepartamentoID REFERENCES Departamento(ID)
);

CREATE TABLE IF NOT EXISTS AULAS_2021 (
    MateriaID INT,
    CursoID INT,
    ProfessorID INT,
    PeriodoID INT,
    Horario VARCHAR(6),

    FOREIGN KEY MateriaID REFERENCES Materia(ID),
    FOREIGN KEY PeriodoID REFERENCES Periodo(ID),
    FOREIGN KEY ProfessorID REFERENCES Professores(ID),
    FOREIGN KEY CursoID REFERENCES Cursos(ID)
);



