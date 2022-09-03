CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BigInt auto_increment,
nome VarChar(100) not null,
attaques VarChar (100),
dado_de_vida VarChar(3),
resistencias VarChar(100),
primary key(id)
);

INSERT INTO tb_classes (nome, attaque, dado_de_vida, resistencias) VALUES ("dragão", "fogo", "150", "Voa e fogo");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("cavaleiro", "espada de fogo", "5", "Sua espada pega fogo");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Bruxa do vale", "Lagrima de sangue", "100", "suas bruxaria faz vc morre em um estande");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Casador", "Machado", "3", "sua missão e matar dodas as bruxa");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Lobo", "presa assasina", "200", "sua mordida mata");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Gavião", "garras assasina", "7", " pica e voa");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Guerreiro", "Força ou Destreza", "2", "Força e controi");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("trou", "força", "8", "super força");
INSERT INTO tb_classes  (nome, attaque, dado_de_vida, resistencias) VALUES ("Mago", "Inteligência", "6", "Sabedoria e Inteligência");

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(200) not null,
raca VarChar(200) not null,
poder Int(50),
poder Int(50),
forca Int(20),
equipamento VarChar(300),
magia int(500),
classe_id BigInt,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

INSERT INTO tb_personagens (nome, raca, ataque, defesa, forca, equipamento, magia, classe_id)
VALUES ("Ruby", "dragão", 100000, 100000, 50000, "sem equipamento", "10", 1);
INSERT INTO tb_personagens (nome, raca, ataque, defesa, forca, equipamento, magia, classe_id)
VALUES ("DAN", "Guerreiro", 50, 60, 200, "com equipamento", "2", 6);
INSERT INTO tb_personagens (nome, raca, ataque, defesa, forca, equipamento, magia, classe_id)
VALUES ("SAN", "bruxa", 500, 600, 2000, "com equipamento", "8", 3);
INSERT INTO tb_personagens (nome, raca, ataque, defesa, forca, equipamento, magia, classe_id)
VALUES ("Max", "Lobo", 90000, 90000, 20000, "sem equipamento", "9", 7);
INSERT INTO tb_personagens (nome, raca, ataque, defesa, forca, equipamento, magia, classe_id)
VALUES ("Ruan", "Mago", 5000, 6000, 2000, "com equipamento", "6", 4);

SELECT * FROM tb_personagens WHERE ataque > 2000.00 ORDER BY ataque;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000 ORDER BY defesa;

UPDATE tb_personagens SET nome = "SAN" WHERE id = 8;

UPDATE tb_personagens SET nome = "Ruan" WHERE id = 4;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, raca, ataque, defesa, forca, equipamento, magia, tb_classes.nome
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT nome, raca, ataque, defesa, forca, equipamento, magia, tb_classes.nome
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id 
WHERE classe_id = 8;




