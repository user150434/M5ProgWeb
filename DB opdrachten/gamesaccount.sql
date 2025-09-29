-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gameraccount` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `gameraccount` ;

-- -----------------------------------------------------
-- Table `gameraccount`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`game` (
  `gameid` INT NOT NULL,
  `achievements` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`gameid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`gamer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`gamer` (
  `idgamer` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `games` VARCHAR(45) NOT NULL,
  `game` VARCHAR(45) NOT NULL,
  `achievements` VARCHAR(45) NOT NULL,
  `game_gameid` INT NOT NULL,
  PRIMARY KEY (`idgamer`, `game_gameid`),
  INDEX `fk_gamer_game_idx` (`game_gameid` ASC) VISIBLE,
  CONSTRAINT `fk_gamer_game`
    FOREIGN KEY (`game_gameid`)
    REFERENCES `gameraccount`.`game` (`gameid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
