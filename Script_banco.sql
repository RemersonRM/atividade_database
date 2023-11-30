CREATE TABLE Veiculo (
    ID INT PRIMARY KEY,
    Marca VARCHAR(255),
    Modelo VARCHAR(255),
    AnoFabricacao INT,
    Placa VARCHAR(50),
    NumeroChassi VARCHAR(255),
    Quilometragem INT,
    Proprietario VARCHAR(255)
);


CREATE TABLE Inspetor (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Contato VARCHAR(255)
);


CREATE TABLE Vistoria (
    ID INT PRIMARY KEY,
    Data DATE,
    Local VARCHAR(255),
    Resultado ENUM('Aprovado', 'Reprovado'),
    Observacoes TEXT,
    VeiculoID INT,
    InspetorID INT,
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(ID),
    FOREIGN KEY (InspetorID) REFERENCES Inspetor(ID)
);


CREATE TABLE ItemVistoria (
    ID INT PRIMARY KEY,
    Descricao TEXT,
    Categoria ENUM('Motor', 'Freios', 'Pneus'),
    Condicao ENUM('Bom', 'Regular', 'Ruim'),
    VistoriaID INT,
    FOREIGN KEY (VistoriaID) REFERENCES Vistoria(ID)
);