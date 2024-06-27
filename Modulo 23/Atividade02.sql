CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE product (
	id BIGINT AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    product_description VARCHAR(255) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    atunement_required VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO product (product_name, product_description, price, atunement_required)
	VALUES ("Vorpal Sword", "Beheads on a Critical hit", 10000, "yes" ),
    ("Adamantine Armor", "Turns a critical hit into a normal hit", 50000, "no"),
    ("Potion of Healing", "Heals 2d4 + 2", 50, "no"),
    ("Belt of Stone Giant Strength", "Stenght Score is 23 while worn", 900, "yes"),
    ("Potion of Invisibility", "User becomes invisible for 1 hour", 180, "no");
    
SELECT * FROM product WHERE price > 500 ;

SELECT * FROM product WHERE price < 500 ;

UPDATE product SET price = 1000 WHERE Id = 1;
