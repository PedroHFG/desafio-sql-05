-- Criação das tabelas

CREATE TABLE IF NOT EXISTS tb_regiao (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	localidade_s FLOAT,
	localidade_w FLOAT,
	descricao VARCHAR(30)
);


CREATE TABLE IF NOT EXISTS tb_vinicola (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	descricao VARCHAR(100),
	fone VARCHAR(12),
	email VARCHAR(20),
	regiao_id INTEGER NOT NULL,
	FOREIGN KEY (regiao_id) REFERENCES tb_regiao(id)
);

CREATE TABLE IF NOT EXISTS tb_tipo_vinho (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_vinho (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(15) NOT NULL,
	tipo_id INTEGER NOT NULL,
	preco FLOAT NOT NULL,
	vinicola_id INTEGER NOT NULL,
	FOREIGN KEY (tipo_id) REFERENCES tb_tipo_vinho(id),
	FOREIGN KEY (vinicola_id) REFERENCES tb_vinicola(id)
);



-- Alimentando as tabelas com dados:


-- tb_regiao
INSERT INTO tb_regiao (nome, localidade_s, localidade_w, descricao) VALUES ('Vale Central', 33.8088, 70.7644, 'Chile');
INSERT INTO tb_regiao (nome, localidade_s, localidade_w, descricao) VALUES ('Serra Gaúcha', 29.3746, 50.8764, 'Sul do Brasil');

-- tb_vinicola
INSERT INTO tb_vinicola (id, nome, descricao, email, regiao_id) VALUES (1, 'Santa Rita', 'localizada no valle del maipo e tem mais de 100 anos de história', 'santa@gmail.com', 1);
INSERT INTO tb_vinicola (id, nome, fone, email, regiao_id) VALUES (2, 'Santa Carolina', '3395-4422', 'carolina@gmail.com', 1);
INSERT INTO tb_vinicola (id, nome, descricao, fone, email, regiao_id) VALUES (3, 'Garibaldi', 'Vinícola situada na serra gaúcha', '9822-3344', 'garibaldi@gmail.com', 2);


-- tb_tipo_vinho
INSERT INTO tb_tipo_vinho (id, nome) VALUES (1, 'Tinto');
INSERT INTO tb_tipo_vinho (id, nome) VALUES (2, 'Branco');
INSERT INTO tb_tipo_vinho (id, nome) VALUES (3, 'Rose');
INSERT INTO tb_tipo_vinho (id, nome) VALUES (4, 'Bordeaux');


-- tb_vinho
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (1, 'Amanda', 1, 100.0, 1);
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (2, 'Belinha', 2, 200.0, 1);
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (3, 'Camila', 4, 65.0, 2);
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (4, 'Daniela', 3, 89.0, 2);
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (5, 'Eduarda', 1, 55.0, 3);
INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id) VALUES (6, 'Fernanda', 2, 70.0, 3);


















