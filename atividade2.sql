-- ATIVIDADE 1

CREATE DATABASE att;
USE att;
CREATE TABLE livro(
id INT AUTO_INCREMENT,
titulo VARCHAR(100) NOT NULL,
 autor VARCHAR(100) NOT NULL,
 editora VARCHAR(255) NOT NULL,
 ano_de_publicacao DATE NOT NULL, 
 ISBN VARCHAR(20) UNIQUE NOT NULL,
 PRIMARY KEY(id)
);
INSERT INTO livro(titulo, autor, editora, ano_de_publicacao, ISBN) VALUES ("Amor e Ódio", "Rebeca Izabel", "SENAI", "2030-05-13", "478002934"); 
INSERT INTO livro(titulo, autor, editora, ano_de_publicacao, ISBN) VALUES ("Uma vida duvidosa", "Elloar Nunes", "CESMAC", "2023-06-01", "6345709367"); 
INSERT INTO livro(titulo, autor, editora, ano_de_publicacao, ISBN) VALUES ("Renascendo a Vida", "Elloar Teixeira", "SENAI", "2025-06-06", "78348023"); 

CREATE TABLE usuario(
id INT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
telefone VARCHAR(100) NOT NULL, 
PRIMARY KEY(id)
);
INSERT INTO usuario(nome, email, telefone) VALUES("Rebeca", "rebeca.gmail.com", "(82) 9 9002-8922"), ("Elloar", "elloar@gmail.com", "(82) 9 9973-3263"), ("Maria", "maria.gmail.com", "(82) 9 9748-6323");

CREATE TABLE emprestimo(
id INT AUTO_INCREMENT NOT NULL,
usuario_id INT NOT NULL,
 livro_id INT NOT NULL,
 data_de_emprestimo DATE, 
 data_de_devolucao DATE,
 PRIMARY KEY(id),
 FOREIGN KEY (usuario_id) REFERENCES usuario(id),
 FOREIGN KEY (livro_id) REFERENCES livro(id)
);
INSERT INTO emprestimo(usuario_id, livro_id, data_de_emprestimo, data_de_devolucao) VALUES( 1, 1, "2022-09-08", "2023-09-08"), ( 2, 2, "2025-09-08", "2025-10-08"), ( 3, 3, "2024-09-16", "2024-12-16");

-- ATIVIDADE 2
CREATE TABLE alunos (
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
idade INT NOT NULL, 
sexo VARCHAR(50) NOT NULL, 
peso DECIMAL(200, 50), 
altura DECIMAL(5, 0),
PRIMARY KEY(id)
);

CREATE TABLE  exercicios(
id INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL, 
grupo_muscular VARCHAR(100) NOT NULL, 
descricao VARCHAR(255) NOT NULL, 
PRIMARY KEY(id)
);

CREATE TABLE  treinos(
id INT AUTO_INCREMENT NOT NULL, 
repeticoes INT NOT NULL, 
series VARCHAR(100) NOT NULL, 
ordem VARCHAR(100) NOT NULL, 
PRIMARY KEY(id)
);

CREATE TABLE treino_com_exercicios( 
id INT AUTO_INCREMENT NOT NULL, 
repeticoes INT NOT NULL, 
series VARCHAR(100) NOT NULL, 
ordem VARCHAR(100) NOT NULL, 
treino_id INT NOT NULL,
exercicio_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (treino_id) REFERENCES treinos(id),
FOREIGN KEY (exercicio_id) REFERENCES exercicios
);

