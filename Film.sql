-- MySQL Script generated by MySQL Workbench
-- Tue May 24 11:09:53 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema location_de_film
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema location_de_film
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `location_de_film` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `location_de_film` ;

-- -----------------------------------------------------
-- Table `location_de_film`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `location_de_film`.`client` (
  `idclient` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(25) NOT NULL,
  `Prenom` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`idclient`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `location_de_film`.`Film_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `location_de_film`.`Film_information` (
  `idFilm_information` INT NOT NULL AUTO_INCREMENT,
  `Titre` VARCHAR(45) NOT NULL,
  `Date_sorti` DATE NOT NULL,
  `Dure` VARCHAR(45) NOT NULL,
  `Realisateur` VARCHAR(45) NOT NULL,
  `client_idclient` INT NOT NULL,
  PRIMARY KEY (`idFilm_information`),
  INDEX `fk_Film_information_client1_idx` (`client_idclient` ASC) VISIBLE,
  CONSTRAINT `fk_Film_information_client1`
    FOREIGN KEY (`client_idclient`)
    REFERENCES `location_de_film`.`client` (`idclient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `location_de_film`.`Film_Categorie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `location_de_film`.`Film_Categorie` (
  `idFilm_Categorie` INT NOT NULL AUTO_INCREMENT,
  `Action` VARCHAR(45) NOT NULL,
  `Comedie` VARCHAR(45) NOT NULL,
  `Aventure` VARCHAR(45) NOT NULL,
  `Drame` VARCHAR(45) NOT NULL,
  `Horreur` VARCHAR(45) NOT NULL,
  `Film_information_idFilm_information` INT NOT NULL,
  PRIMARY KEY (`idFilm_Categorie`),
  INDEX `fk_Film_Categorie_Film_information1_idx` (`Film_information_idFilm_information` ASC) VISIBLE,
  CONSTRAINT `fk_Film_Categorie_Film_information1`
    FOREIGN KEY (`Film_information_idFilm_information`)
    REFERENCES `location_de_film`.`Film_information` (`idFilm_information`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `location_de_film`.`Payement_Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `location_de_film`.`Payement_Client` (
  `idPayement_Client` INT NOT NULL AUTO_INCREMENT,
  `Date_Payement` DATE NOT NULL,
  `Description` VARCHAR(45) NOT NULL,
  `Montant` VARCHAR(45) NOT NULL,
  `client_idclient` INT NOT NULL,
  PRIMARY KEY (`idPayement_Client`),
  INDEX `fk_Payement_Client_client1_idx` (`client_idclient` ASC) VISIBLE,
  CONSTRAINT `fk_Payement_Client_client1`
    FOREIGN KEY (`client_idclient`)
    REFERENCES `location_de_film`.`client` (`idclient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `location_de_film`.`intermediaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `location_de_film`.`intermediaire` (
  `idIntermediaire` INT NOT NULL AUTO_INCREMENT,
  `client` INT NULL DEFAULT NULL,
  `Film_loue` VARCHAR(45) NOT NULL,
  `Date_location` DATE NOT NULL,
  `Date_retour` DATE NOT NULL,
  `Film_information_idFilm_information` INT NOT NULL,
  PRIMARY KEY (`idIntermediaire`),
  INDEX `Nom_idx` (`client` ASC) VISIBLE,
  INDEX `fk_intermediaire_Film_information1_idx` (`Film_information_idFilm_information` ASC) VISIBLE,
  CONSTRAINT `IdClient`
    FOREIGN KEY (`client`)
    REFERENCES `location_de_film`.`client` (`idclient`),
  CONSTRAINT `fk_intermediaire_Film_information1`
    FOREIGN KEY (`Film_information_idFilm_information`)
    REFERENCES `location_de_film`.`Film_information` (`idFilm_information`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
