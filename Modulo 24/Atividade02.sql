CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id INTEGER AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria  VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    dosagem_mg VARCHAR(255),
    unidades_por_embalagem INT,
    preco DECIMAL(8,2) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
	VALUES ("Analgésico", "Medicamento eficaz contra dores"),
    ("Antibiótico", "Medicamento eficaz contra infecções"),
    ("Ansiolítico", "Medicamento para combate à ansiedade"),
    ("Antidepressivos", "Medicamento para combate à depressão"),
	("Higiene e perfumaria", "Produtos de higiene e perfumaria");

INSERT INTO tb_produtos (nome_produto, dosagem_mg, unidades_por_embalagem, preco, id_categoria)
	VALUES ("Cotonete", null, 75, 6.49, 5),
    ("Amoxicilina", "500mg por comprimido", 15, 28.89, 2),
    ("Dipirona sódica", "500mg por comprimido", 10, 5.25, 1),
    ("Cloridrato de Fluoxetina", "20mg por comprimido", 30, 27.51, 4),
    ("Kit Shampoo e Condicionador aussie 200ml", null, null, 55.99, 5),
    ("Cloridrato de Venlafaxina", "75mg", 30, 30, 4),
    ("Sabonete Dove", null, 1, 3.49, 5),
    ("Clonazepam", "2,5 por mililitro", 1, 9.14, 3);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 25.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT nome_produto, dosagem_mg, unidades_por_embalagem, preco, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome_produto, dosagem_mg, unidades_por_embalagem, preco, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE id_categoria = 5;