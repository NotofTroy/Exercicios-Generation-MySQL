CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id INTEGER AUTO_INCREMENT,
    class_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    character_name VARCHAR(255) NOT NULL,
    character_species VARCHAR(255) NOT NULL,
    character_class_id INTEGER NOT NULL,
    character_total_level INTEGER NOT NULL,
    background VARCHAR(255) NOT NULL,
    melee_attack INTEGER NOT NULL,
    magic_attack INTEGER NOT NULL,
    armor_class INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (character_class_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (class_name)
	VALUES ("Fighter"),
    ("Wizard"),
    ("Barbarian"),
    ("Druid"),
    ("Paladin"),
    ("Artificer");
    
INSERT INTO tb_personagens (character_name, character_species, character_class_id, character_total_level, background, melee_attack, magic_attack, armor_class)
	VALUES ("Elyse Hrist", "Eladrin Elf", 2, 7, "Pirate", 8, 11, 14),
    ("Ursula Banesdóttir", "Aasimar", 5, 13, "Custom", 9, 10, 20),
    ("Velkhana Alborg", "Forest Elf", 1, 8, "Pirate", 8, 0, 20),
    ("Gudrun Vitnoshkorn", "Half Orc", 3, 9, "Tribal Heir", 9, 0, 16),
    ("Aleana", "Half Elf", 4, 4, "Orphan", 4, 6, 12),
    ("Clessidra Strange", "Variant Human", 2, 3, "Noble", 2, 6, 10),
    ("Asuka Minamoto", "Human", 5, 1, "Custom", 5, 2, 14),
    ("Athena T'loak", "Asari", 6, 1, "Engineer", 6, 6, 16);
    
SELECT * FROM tb_personagens WHERE melee_attack > 7;

SELECT * FROM tb_personagens WHERE armor_class BETWEEN 14 AND 19;

SELECT * FROM tb_personagens WHERE character_name LIKE "%h%";

SELECT character_name, character_species, tb_classes.class_name
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.character_class_id = tb_classes.id;

SELECT character_name, character_species, tb_classes.class_name
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.character_class_id = tb_classes.id
WHERE character_class_id= 2;
