CREATE DATABASE sprint1_pi;
USE sprint1_pi;

CREATE TABLE supermercado(
	id_mercado INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    cnpj CHAR(14)
);

CREATE TABLE entrada_saida(
	id_saida_entrada INT PRIMARY KEY AUTO_INCREMENT,
    sensor_entrada TINYINT(1),
    sensor_saida TINYINT(1),
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

INSERT INTO supermercado (nome, cnpj) VALUES 
('SP Tech Supermercados - Unidade Centro', '12345678000195');

INSERT INTO entrada_saida (sensor_entrada, sensor_saida, qtd_pessoas) VALUES 
(1, 0, 1),
(0, 1, 1);

INSERT INTO filas (caixa_num, sensor1, sensor2, sensor3) VALUES 
(1, 1, 0, 0),
(2, 1, 1, 1);

INSERT INTO alertas (caixa_num, statuss) VALUES 
(1, 'leve'),
(2, 'elevado');

SELECT * FROM supermercado;
SELECT * FROM entrada_saida;
SELECT * FROM filas;
SELECT * FROM alertas;