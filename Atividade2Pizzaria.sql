drop database if exists db_pizzaria_legal;
create database if not exists db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar (100), 
bebida varchar (100), 
entrega boolean,
primary key (id)
);

insert into tb_categoria (tamanho, bebida, entrega) 
	values ("Grande", "sim", false);
insert into tb_categoria (tamanho, bebida, entrega) 
	values ("Médio", "não", false);
insert into tb_categoria (tamanho, bebida, entrega) 
	values ("Gigante", "sim", true);
insert into tb_categoria (tamanho, bebida, entrega) 
	values ("Pequena", "sim", true);
insert into tb_categoria (tamanho, bebida, entrega) 
	values ("Fatia", "não", true);
    
select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment primary key,
sabor varchar (100),
valor decimal (4,2),
borda varchar (110),
tipo_de_massa varchar (100),
preco_bebida decimal (4,2),
idCategoria bigint not null
);

alter table tb_pizza add constraint fk_idCategoria
foreign key (idCategoria)
references tb_categoria (id)
on delete cascade
on update cascade;

insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Calabresa", 45.99, "Sim", "Grossa", 8.00, 4);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Marguerita", 56.75, "Não", "Fina", 24.00, 2);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Camarão", 79.99, "Sim", "Média", 0.00, 2);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Brócolis", 52.50, "Sim", "Grossa", 12.00, 1);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Mussarela", 45.99, "Não", "Fina", 0.00, 4);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Bacon", 55.21, "Sim", "Grossa", 10.00, 3);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Frango com Cheddar", 60.00, "Sim", "Grossa", 20.00, 1);
insert into tb_pizza (sabor, valor, borda, tipo_de_massa, preco_bebida, idCategoria) 
	values ("Palmito", 59.65, "Não", "Fina", 5.00, 5);
    
select * from tb_pizza;

select * from tb_pizza where valor > 45.00;
select * from tb_pizza where valor > 29.00 and valor < 60.00;
select * from tb_pizza where sabor like "%C%";
select * from tb_pizza A inner join tb_categoria B on A.idCategoria = B.tamanho like "%Grande%";
select * from tb_pizza where preco_bebida > 0.00;



