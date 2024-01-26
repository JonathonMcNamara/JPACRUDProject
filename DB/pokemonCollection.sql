-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PokemonCardCollection
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PokemonCardCollection` ;

-- -----------------------------------------------------
-- Schema PokemonCardCollection
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PokemonCardCollection` DEFAULT CHARACTER SET utf8 ;
USE `PokemonCardCollection` ;

-- -----------------------------------------------------
-- Table `pokemon_collection`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon_collection` ;

CREATE TABLE IF NOT EXISTS `pokemon_collection` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `cardset` VARCHAR(45) NULL,
  `cardtype` VARCHAR(45) NULL,
  `cardnumber` VARCHAR(45) NULL,
  `grade` VARCHAR(45) NULL DEFAULT 'Ungraded',
  `price` DECIMAL(6,2) NULL,
  `last_update` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS DuhLeeted@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'DuhLeeted'@'localhost' IDENTIFIED BY 'DuhLeeted';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'DuhLeeted'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon_collection`
-- -----------------------------------------------------
START TRANSACTION;
USE `PokemonCardCollection`;
INSERT INTO `pokemon_collection` (`id`, `name`, `cardset`, `cardtype`, `cardnumber`, `grade`, `price`, `last_update`) VALUES (1, 'Charizard ex', 'Paldean Fates', 'SIR', '234/091', 'Ungraded', 143.00, NULL);
INSERT INTO `pokemon_collection` (`id`, `name`, `cardset`, `cardtype`, `cardnumber`, `grade`, `price`, `last_update`) VALUES (2, 'Lugia V', 'Silver Tempest', 'Alt Art', '186/195', 'Ungraded', 131, NULL);
INSERT INTO `pokemon_collection` (`id`, `name`, `cardset`, `cardtype`, `cardnumber`, `grade`, `price`, `last_update`) VALUES (3, 'Roaring Moon ex', 'Paradox Rift', 'SIR', '251/182', 'Ungraded', 70, NULL);

COMMIT;

