DROP DATABASE IF EXISTS `DarkSoulsDB`;

CREATE DATABASE IF NOT EXISTS `DarkSoulsDB`;

CREATE TABLE `DarkSoulsDB`.`characters` (
    `id_character` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45),
    `friendly` BOOLEAN
);

CREATE TABLE `DarkSoulsDB`.`weapon` (
    `id_weapon` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `damage` INT(3),
    `weight` FLOAT(2,1)
);

INSERT INTO DarkSoulsDB.characters (name, last_name, friendly)
VALUES
    ('Solaire', 'of Astora', TRUE),
    ('Anastacia', 'of Astora', TRUE),
    ('Lautrec', 'of Carim', FALSE),
    ('Nito', NULL, FALSE);

INSERT INTO DarkSoulsDB.weapon (name, damage, weight)
VALUES
    ('black knight sword', 330, 8.0),
    ('drake sword', 300, 6.0);