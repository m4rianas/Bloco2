create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar (100),
idade_indicada int,
disp_download boolean,
primary key (id)
);

insert into tb_classe (categoria, idade_indicada, disp_download)
	values ("Hérois", 10, true);
insert into tb_classe (categoria, idade_indicada, disp_download)
	values ("Luta", 14, true);
insert into tb_classe (categoria, idade_indicada, disp_download)
	values ("Corrida", 8, true);
insert into tb_classe (categoria, idade_indicada, disp_download)
	values ("Princesas", 8, true);
insert into tb_classe (categoria, idade_indicada, disp_download)
	values ("Futebol", 10, true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (100),
ataque int,
defesa int,
valor float,
genero varchar (100),
fk_categoria bigint,
primary key (id), foreign key (fk_categoria) references tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Vingadores", 9999, 7654, 129.97, "ambos", 1);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Bela e a Fera", 0002, 0001, 27.75, "meninas", 4);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Super Mario", 1870, 967, 55.48, "ambos", 3);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Incrivel Hulk", 9999, 9999, 89.21, "meninos", 1);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Street Fight", 6641, 3365, 9.99, "meninos", 2);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Fifa", 1292, 1292, 187.32, "meninos", 5);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Carros", 0243, 0087, 39.80, "ambos", 3);
insert into tb_personagem (nome, ataque, defesa, valor, genero, fk_categoria)
	values ("Malevola", 0037, 0012, 14.99, "meninas", 4);
    
select * from tb_personagem A inner join tb_classe B on A.fk_categoria = B.id;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa > 1000 and defesa < 2000;

select * from tb_personagem where nome like "%C%";
select * from tb_personagem A inner join tb_classe B on A.fk_categoria = B.id where B.categoria like "%Corrida%";



