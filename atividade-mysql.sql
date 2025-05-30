CREATE DATABASE rh;
USE rh;
CREATE TABLE funcionario(
id_funcionario VARCHAR(10),
data_demissao DATE,
ativo BOOL,
nome VARCHAR(50),
dt_created DATETIME,
cpf VARCHAR(15),
rg VARCHAR(15),
sexo VARCHAR(15), 
cargo VARCHAR(50),
salario DECIMAl(30),  
data_admissao DATE
);
INSERT INTO funcionario (id_funcionario, data_demissao, ativo, nome, dt_created, cpf, rg, sexo, cargo, salario, data_admissao) VALUE
 ("1", "2025-02-23", 0, "Elloar", "2024-02-24 12:20:24","159.123.123-73","3210023-122","Feminino","Gerente",5500.5043,"2022-02-09" );
 INSERT INTO funcionario (id_funcionario, data_demissao, ativo, nome, dt_created, cpf, rg, sexo, cargo, salario, data_admissao) VALUE
 ("1", "2024-06-15", 0, "Mario", "2020-05-08 09:50:30","375.654.634-23","937623-434","Masculino","Desenvolvedor",1000.8043,"2015-10-08" );
 INSERT INTO funcionario (id_funcionario, data_demissao, ativo, nome, dt_created, cpf, rg, sexo, cargo, salario, data_admissao) VALUE
 ("1", "2025-05-15", 0, "Elloar", "2021-05-21 09:39:50","121.654.434-98","972653-763","Feminino","Atendente",3500.5323,"2021-06-17" );
 SELECT * FROM funcionario;
