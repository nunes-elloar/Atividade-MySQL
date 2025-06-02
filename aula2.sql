CREATE DATABASE peoples;
USE peoples;

CREATE TABLE usuario(
id INT,
nome VARCHAR(255),
email VARCHAR(255),
PRIMARY KEY(id)
);
INSERT INTO usuario (id, nome, email)
VALUE (1, 'João Silva', 'joao@silva.com');
INSERT INTO usuario (id, nome, email)
VALUE (2, 'Maria Souza', 'maria@souza.com');
SELECT * FROM usuario;
DROP TABLE usuario;

-- Renomear uma tablela
ALTER TABLE usuario RENAME TO clientes;

-- Adicionar um coluna na tabela
ALTER TABLE clientes ADD COLUMN dt_nascimento DATE AFTER email;

-- Remover uma coluna na tabela
ALTER TABLE clientes DROP COLUMN dt_nascimento;

-- Modificar uma coluna existente (tipo ou propriedade)
ALTER TABLE clientes ADD COLUMN idade VARCHAR(50) AFTER email;
ALTER TABLE clientes MODIFY COLUMN idade INT;
SELECT * FROM clientes;

-- Renomear uma coluna 
ALTER TABLE clientes RENAME COLUMN nome TO nome_completo;

-- Adicionar uma chave primária
ALTER TABLE clientes ADD PRIMARY KEY (id);

-- Remover uma chave primária
ALTER TABLE clientes DROP PRIMARY KEY;

-- CONSTRAINTS / RESTIÇÕES
CREATE DATABASE constraints_restricoes;
USE constraints_restricoes;
CREATE TABLE pessoas(
nome VARCHAR(255) NOT NULL,
email VARCHAR(255),
PRIMARY KEY (id)
);
SELECT * FROM pessoas;
DROP TABLE pessoas;

#NOT NULL
INSERT INTO pessoas (nome, email) VALUE("Elloar", "elloar@gamil.com"); -- OK
INSERT INTO pessoas (nome, email) VALUE("", "elloar@gamil.com"); -- OK
INSERT INTO pessoas (nome, email) VALUE(null, "elloar@gamil.com"); -- ERROR
INSERT INTO pessoas (nome) VALUE("Elloar"); -- OK
INSERT INTO pessoas (email) VALUE("elloar@gamil.com"); -- ERROR

#UNIQUE
CREATE TABLE pessoas(
nome VARCHAR(255) NOT NULL,
idade INT,
email VARCHAR(255) UNIQUE NOT NULL
);
INSERT INTO pessoas (nome, email) VALUE("Elloar", "elloar@gamil.com");
INSERT INTO pessoas (nome, email) VALUE("Teixeira", "teixeira@gamil.com");
INSERT INTO pessoas (nome, email) VALUE("Nunes", "nunes@gamil.com");

#PRIMARY KEY
CREATE TABLE livros(
id INT NOT NULL,
nome VARCHAR(255) NOT NULL,
ISBN CHAR(15),
PRIMARY KEY(id)
);
INSERT INTO livros (id, nome, ISBN) VALUE(1, "teste", "123-79-98");
INSERT INTO livros (id, nome, ISBN) VALUE(2, "teste", "123-79-98");

#AUTO_INCREMENT
DROP TABLE livros;
CREATE TABLE livros(
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
ISBN CHAR(15),
PRIMARY KEY(id)
);
INSERT INTO livros (nome, ISBN) VALUE("teste", "123-79-98");
SELECT * FROM livros;

#FOREIGN KEY
CREATE TABLE clientes(
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
usuario_id INT NOT NULL,
PRIMARY KEY(id)
);
CREATE TABLE endereco(
id INT AUTO_INCREMENT NOT NULL,
rua VARCHAR(255) NOT NULL,
bairro VARCHAR(255) NOT NULL,
usuario_id VARCHAR(255) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (usuario_id) REFERENCES cliente(id)
);
INSERT INTO clientes(nome, email) VALUES("nome", "email");
INSERT INTO endereco(rua, bairro, usuario_id) VALUES("rua", "bairro", 1);