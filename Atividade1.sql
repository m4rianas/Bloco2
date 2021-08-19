create database db_rh;

use db_rh;

create table tb_funcionario (
id bigint auto_increment,
nome varchar (100) not null,
idade int,
salario float,
codigo int,
funcao varchar (100),
primary key (id)
);

insert into tb_funcionario (nome, idade, salario, funcao, codigo) values ("João", 16, 900.00, "Aprendiz", 1154);
insert into tb_funcionario (nome, idade, salario, funcao, codigo) values ("Anna", 19, 1586.87, "Atendente", 0876);
insert into tb_funcionario (nome, idade, salario, funcao, codigo) values ("Mari", 24, 3467.99, "Gerente", 0999);
insert into tb_funcionario (nome, idade, salario, funcao, codigo) values ("Heitor", 27, 7865.50, "Developer", 0087);
insert into tb_funcionario (nome, idade, salario, funcao, codigo) values ("Micaely", 31, 1789.00, "Limpeza", 0579);
select * from tb_funcionario;

select * from tb_funcionario where salario < 2000.00;
select * from tb_funcionario where salario > 2000.00;

update tb_funcionario set nome = "Julia", idade = 18, salario = 2143.67, funcao = "SubGerente", codigo = 0787 where id = 2;
select * from tb_funcionario;
