-- Criação do Banco de Dados para a ONG Mãos Solidárias

CREATE TABLE VOLUNTARIO (
    id_voluntario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(15)
);

CREATE TABLE DOADOR (
    id_doador INT AUTO_INCREMENT PRIMARY KEY,
    nome_razao_social VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15)
);

CREATE TABLE EVENTO (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nome_evento VARCHAR(100) NOT NULL,
    data_evento DATETIME NOT NULL,
    local VARCHAR(150),
    descricao TEXT
);

CREATE TABLE HABILIDADE (
    id_habilidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_habilidade VARCHAR(50) NOT NULL
);

CREATE TABLE DOACAO (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    id_doador INT,
    data_doacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor DECIMAL(10,2) NOT NULL,
    metodo_pagamento VARCHAR(20),
    FOREIGN KEY (id_doador) REFERENCES DOADOR(id_doador)
);

CREATE TABLE INSCRICAO (
    id_inscricao INT AUTO_INCREMENT PRIMARY KEY,
    id_voluntario INT,
    id_evento INT,
    data_inscricao DATETIME DEFAULT CURRENT_TIMESTAMP,
    compareceu BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_voluntario) REFERENCES VOLUNTARIO(id_voluntario),
    FOREIGN KEY (id_evento) REFERENCES EVENTO(id_evento)
);

CREATE TABLE VOLUNTARIO_HABILIDADE (
    id_voluntario INT,
    id_habilidade INT,
    PRIMARY KEY (id_voluntario, id_habilidade),
    FOREIGN KEY (id_voluntario) REFERENCES VOLUNTARIO(id_voluntario),
    FOREIGN KEY (id_habilidade) REFERENCES HABILIDADE(id_habilidade)
);