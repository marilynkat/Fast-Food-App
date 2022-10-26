-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema FastFood
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema FastFood
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `FastFood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `FastFood` ;

-- -----------------------------------------------------
-- Table `FastFood`.`BucketList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FastFood`.`BucketList` (
  `idBucketList` INT NOT NULL AUTO_INCREMENT,
  `restNameBucket` VARCHAR(45) NULL DEFAULT NULL,
  `review` VARCHAR(45) NULL DEFAULT NULL,
  `checkedBool` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`idBucketList`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `FastFood`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FastFood`.`Login` (
  `idLogin` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `passwordHash` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idLogin`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `FastFood`.`Vote`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FastFood`.`Vote` (
  `idVote` INT NOT NULL AUTO_INCREMENT,
  `restName` VARCHAR(45) NULL DEFAULT NULL,
  `numVotes` INT NULL DEFAULT NULL,
  `listCode` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idVote`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;