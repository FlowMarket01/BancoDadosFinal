CREATE DATABASE sprint1_pi;
USE sprint1_pi;

CREATE TABLE supermercado(
	id_mercado INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    cnpj CHAR(14)
);

CREATE TABLE entrada(
	id_entrada INT PRIMARY KEY AUTO_INCREMENT,
    qtd_pessoas INT,
    data_hora DATETIME DEFAULT NOW()
);


CREATE TABLE saida(
	id_entrada INT PRIMARY KEY AUTO_INCREMENT,
    qtd_pessoas INT,
    data_hora DATETIME DEFAULT NOW()
);

CREATE TABLE filas(
	id_filas INT PRIMARY KEY AUTO_INCREMENT,
    caixa_num INT,
    sensor1 TINYINT(1),
    sensor2 TINYINT(1),
    sensor3 TINYINT(1),
    data_hora DATETIME DEFAULT NOW()
);

CREATE TABLE alertas(
	id_alertas INT PRIMARY KEY AUTO_INCREMENT,
    caixa_num INT,
    statuss VARCHAR(20),
    data_hora DATETIME DEFAULT NOW(),
    CONSTRAINT chkStatus CHECK(statuss IN('leve', 'medio', 'elevado'))
);


SELECT * FROM supermercado;
SELECT * FROM entrada;
SELECT * FROM saida;
SELECT * FROM filas;
SELECT * FROM alertas;
