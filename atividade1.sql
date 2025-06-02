-- ATIVIDADE

CREATE DATABASE atividade;
USE atividade;
CREATE TABLE funcionarios (
 id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);
ALTER TABLE funcionarios ADD COLUMN data_admissao DATE AFTER nome;

ALTER TABLE funcionarios MODIFY COLUMN salario DECIMAL(12, 2);

ALTER TABLE funcionarios RENAME COLUMN cargo TO funcao;

ALTER TABLE funcionarios DROP COLUMN data_admissao;

ALTER TABLE funcionarios ADD COLUMN email VARCHAR(100) NOT NULL;

ALTER TABLE funcionarios MODIFY COLUMN email VARCHAR(100); 

ALTER TABLE funcionarios ADD COLUMN ativo BOOL;

INSERT INTO funcionarios (id, nome, funcao, salario, email, ativo) VALUES (1, "Marcos", "Gerente", 5000 , "marcos@gmail.com", 1);
SELECT * FROM funcionarios;

RENAME TABLE funcionarios TO colaboradores;

CREATE INDEX nome_completo ON colaboradores(nome);

-- DESAFIO FINAL
CREATE TABLE produtos(
codigo INT PRIMARY KEY,
descricao VARCHAR(200),
preco DECIMAL(10, 2)
);
ALTER TABLE produtos ADD COLUMN estoque INT;

ALTER TABLE produtos MODIFY COLUMN descricao TEXT;

ALTER TABLE produtos DROP COLUMN preco; 

ALTER TABLE produtos ADD COLUMN preco DECIMAL(10.0);

RENAME TABLE produtos TO itens_estoque; 

INSERT INTO itens_estoque (codigo, descricao, estoque, preco) VALUE ( 0121 ,"Produto de alta qualidade", 5 , 50.55);
SELECT * FROM itens_estoque;