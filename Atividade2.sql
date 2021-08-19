create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (200),
marca varchar (200),
cor varchar (100),
valor float,
quantidade int,
primary key (id)
);

insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Camiseta", "Adidas", "Preta", 79.99, 7);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Camiseta", "Adidas", "Branca", 59.99, 3);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Calça", "Puma", "Verde", 129.30 , 9);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Tênis", "Puma", "Preto", 399.99, 12);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Tênis", "Nike", "Multicor", 635.00, 17);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Blusa", "Vans", "Cinza", 525.89, 1);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Chinelo", "Vans", "Roxo", 167.50, 2);
insert into tb_produtos (nome, marca, cor, valor, quantidade) values ("Meia", "Gap", "Amarela", 49.90, 20);
select * from tb_produtos;

select * from tb_produtos where valor > 500.00;
select * from tb_produtos where valor < 500.00;

update tb_produtos set valor = 426.90, quantidade = 7 where id = 4;
select * from tb_produtos;

