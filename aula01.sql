-- AULA 01 - GERENCIAMENTO DE BANCOS DE DADOS
# Criar um banco de dados
CREATE DATABASE bancodedados;
USE bancodedados;

#Apresentar os bancos de dados
SHOW DATABASES;

#Deleta um banco de dados
DROP DATABASE bancodedados;

#Criar um banco de dados computador, listar os bancos e apagar banco criado

CREATE DATABASE computador;

SHOW DATABASES;

DROP DATABASE computador; 

# AULA 01.1

# Criar tabela
CREATE DATABASE people;
USE people;
CREATE TABLE pessoas(
nome VARCHAR(50),
 cpf VARCHAR(15), 
 email VARCHAR(100)
); 

#Apagar tabela
DROP TABLE pessoas;

# Tipo de dados para as colunas!!!
## Texto - Só o CHAR e VARCHAR aceita números e caracters especiais
-- CHAR()    -> Aceita todos os textos com 0 a 255 caracters.
-- VARCHAR() -> Aceita todos os textos com 0 a 65535 caracters.
-- TINYTEXT  -> Aceita apenas textos com até 255 caracters.
-- MEDIUMTEXT-> Aceita apenas textos com até 16777215 caracters.
## Númerico -
-- BIT(x)      -> Aceita de 1 até 64.
-- TINYINT(x)  -> Aceita de 1 até 255.
-- INT(x)      -> Aceita de -2147483648 até 2147483648.
-- DECIMAL(x,y)-> Aceita números com casa decimais 1052,36.
-- BOOL        -> 0 é falso, e outros valores são verdadeiros.
## DATAS
-- DATE     -> Aceita uma data no formato YYYY-MM-DD.
-- DATATIME -> Aceita uma data e horário no formato YYYY-MM-DD hh:mm:ss.
-- TIMESTAMP-> Aceita uma data no formato DATETIME, porém apenas entre os anos 1970 a 2038.

# Praticando
CREATE DATABASE teste_tipo_dados;
USE teste_tipo_dados;

-- tabela para texto
CREATE TABLE produtos(
nome VARCHAR(50),
sku CHAR(5),
informacoes MEDIUMTEXT
);
-- INSERIR DADOS EM TEXTOS
INSERT INTO produtos (nome, sku, informacoes) VALUES ("MOTO G20", "SMS", 'Smartphone muito bom');
INSERT INTO produtos (nome, sku, informacoes) VALUES ("BOLO", "CHOCO", 'Bolo de chocolate muito bom');
INSERT INTO produtos (nome, sku, informacoes) VALUES ("CHOCOLATE", "BRANC", 'Chocolate branco muito bom');

#Selecionar os dados
SELECT * FROM produtos;

# TABELA PARA NÚMERICOS
CREATE TABLE servidores(
nome VARCHAR(50),
espaco_disco INT(10),
ligado BOOL
);
SHOW TABLES;
INSERT INTO servidores(nome, espaco_disco, ligado) VALUE ("Servidor Ubuntu WEB", 100000, 1); 
INSERT INTO servidores(nome, espaco_disco, ligado) VALUE ("Servidor MySQL", 987654, 0);
INSERT INTO servidores(nome, espaco_disco, ligado) VALUE ("Servidor MONGODB", 456789, 1);
INSERT INTO servidores(nome, espaco_disco, ligado) VALUE ("Servidor APACH", 123654, 0);
SELECT * FROM servidores;


# TABELAS PARA DADOS

CREATE TABLE aniversarios(
nome VARCHAR(50),
dt_nascimento DATE
);
INSERT INTO aniversarios (nome, dt_nascimento) VALUE ("Elloar", "2007-12-09");