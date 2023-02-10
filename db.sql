DROP DATABASE IF EXISTS `DarkSoulsDB`;

CREATE DATABASE IF NOT EXISTS `DarkSoulsDB`;

CREATE TABLE `DarkSoulsDB`.`games` (
    `id_game` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `release_year` INT(4)
) ENGINE = InnoDB;

CREATE TABLE `DarkSoulsDB`.`characters` (
    `id_character` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45),
    `friendly` BOOLEAN,
    `id_game` INTEGER NOT NULL,
    FOREIGN KEY (`id_game`)
        REFERENCES `DarkSoulsDB`.`games` (`id_game`)
) ENGINE = InnoDB;

CREATE TABLE `DarkSoulsDB`.`weapons` (
    `id_weapon` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(45) NOT NULL,
    `damage` INT(3),
    `weight` FLOAT(3,1)
) ENGINE = InnoDB;

INSERT INTO DarkSoulsDB.games (name, release_year)
VALUES
    ('Dark Souls', 2011),
    ('Dark Souls 2', 2014),
    ('Dark Souls 3', 2016);

INSERT INTO DarkSoulsDB.characters (name, last_name, friendly, id_game)
VALUES
    ('Solaire', 'of Astora', TRUE, 1),
    ('Anastacia', 'of Astora', TRUE, 1),
    ('Lautrec', 'of Carim', FALSE, 1),
    ('Nito', NULL, FALSE, 1),
    ('Emerald', 'Herald', TRUE, 2),
    ('Sweet', 'Shalquoir', TRUE, 2);

INSERT INTO DarkSoulsDB.weapons (name, damage, weight)
VALUES
    ('black knight sword', 330, 8.0),
    ('drake sword', 300, 6.0),
    ('red iron twinblade', 238, 14.0),
    ('fume ultra greatsword', 270, 28.0),
    ('storm ruler', 143, 8.0),
    ('farron greatsword', 141, 12.5),
    ('firelink greatsword', 128, 9.0);