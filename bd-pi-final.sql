CREATE DATABASE sprint1_pi;
USE sprint1_pi;

CREATE TABLE supermercado(
	id_mercado INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    cnpj CHAR(14)
);

CREATE TABLE entrada_saida(
	id_saida_entrada INT PRIMARY KEY AUTO_INCREMENT,
    tipo_evento VARCHAR(10),
    qtd_pessoas INT,
    data_hora DATETIME DEFAULT NOW(),
    CONSTRAINT chkTipo_evento CHECK(tipo_evento IN('entrada', 'saida'))
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

INSERT INTO entrada_saida (tipo_evento, qtd_pessoas) VALUES
('entrada', 1), 
('entrada', 1), 
('saida', 1);   

INSERT INTO filas (caixa_num, sensor1, sensor2, sensor3) VALUES
(1, 1, 0, 0),
(1, 1, 1, 0), 
(1, 1, 1, 1); 

INSERT INTO alertas (caixa_num, statuss) VALUES
(1, 'leve'),
(1, 'medio'), 
(1, 'elevado'); 

SELECT * FROM supermercado;
SELECT * FROM entrada_saida;
SELECT * FROM filas;
SELECT * FROM alertas;
