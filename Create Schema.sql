-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema freelance
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema freelance
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `freelance` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema job_portal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema job_portal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `job_portal` ;
USE `freelance` ;

-- -----------------------------------------------------
-- Table `freelance`.`company_profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`company_profile` (
  `company_id` INT NOT NULL,
  `company_name` VARCHAR(45) NULL DEFAULT NULL,
  `company_description` VARCHAR(45) NULL DEFAULT NULL,
  `sector_detail` VARCHAR(45) NULL DEFAULT NULL,
  `company_website` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`user_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`user_type` (
  `user_type_id` INT NOT NULL,
  `user_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_type_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`freelance_account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`freelance_account` (
  `freelance_id` INT NOT NULL,
  `user_type_id` INT NOT NULL,
  `first_name` VARCHAR(50) NULL DEFAULT NULL,
  `last_name` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  `dob` DATE NULL DEFAULT NULL,
  `gender` VARCHAR(5) NULL DEFAULT NULL,
  `contact_number` INT NULL DEFAULT NULL,
  PRIMARY KEY (`freelance_id`),
  INDEX `user_type_id_idx` (`user_type_id` ASC) VISIBLE,
  CONSTRAINT `user_type_id`
    FOREIGN KEY (`user_type_id`)
    REFERENCES `freelance`.`user_type` (`user_type_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`education`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`education` (
  `education_id` INT NOT NULL,
  `freelance_Id` INT NULL DEFAULT NULL,
  `university` VARCHAR(45) NULL DEFAULT NULL,
  `degree_name` VARCHAR(45) NULL DEFAULT NULL,
  `major_subject` VARCHAR(45) NULL DEFAULT NULL,
  `start_date` DATE NULL DEFAULT NULL,
  `end_date` DATE NULL DEFAULT NULL,
  `cgpa` DECIMAL(20,0) NULL DEFAULT NULL,
  PRIMARY KEY (`education_id`),
  INDEX `freelance_Id_idx` (`freelance_Id` ASC) VISIBLE,
  CONSTRAINT `freelance_education`
    FOREIGN KEY (`freelance_Id`)
    REFERENCES `freelance`.`freelance_account` (`freelance_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`experience`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`experience` (
  `experience_id` INT NOT NULL,
  `freelance_Id` INT NULL DEFAULT NULL,
  `current_job_title` VARCHAR(45) NULL DEFAULT NULL,
  `total_experience` DECIMAL(25,0) NULL DEFAULT NULL,
  `feedback_rating` DECIMAL(10,0) NULL DEFAULT NULL,
  `recent_start_date` DATE NULL DEFAULT NULL,
  `recent_end_date` DATE NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `location` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`experience_id`),
  INDEX `freelance_Id_idx` (`freelance_Id` ASC) VISIBLE,
  CONSTRAINT `freelance_experience`
    FOREIGN KEY (`freelance_Id`)
    REFERENCES `freelance`.`freelance_account` (`freelance_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`freelance_services`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`freelance_services` (
  `freelance_service_id` INT NOT NULL,
  `freelance_Id` INT NULL DEFAULT NULL,
  `service_id` INT NULL DEFAULT NULL,
  `salary_per_hour` VARCHAR(4) NULL DEFAULT NULL,
  `background_verified` TINYINT(1) NULL DEFAULT NULL,
  `is_available` TINYINT(1) NULL DEFAULT NULL,
  `service_location` VARCHAR(45) NULL DEFAULT NULL,
  `job_title` VARCHAR(45) NULL DEFAULT NULL,
  `service_description` VARCHAR(500) NULL DEFAULT NULL,
  `price` VARCHAR(45) NULL DEFAULT NULL,
  `rating` DECIMAL(10,0) NULL DEFAULT NULL,
  `discount` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`freelance_service_id`),
  INDEX `freelance_Id_idx` (`freelance_Id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `freelance`.`job_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`job_status` (
  `job_id` INT NOT NULL,
  `freelance_service_id` INT NULL DEFAULT NULL,
  `company_id` INT NULL DEFAULT NULL,
  `start_date` DATE NULL DEFAULT NULL,
  `end_date` DATE NULL DEFAULT NULL,
  `time_period` INT NULL DEFAULT NULL,
  `in_progress` VARCHAR(45) NULL DEFAULT NULL,
  `payment_done` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  INDEX `company_id_idx` (`company_id` ASC) VISIBLE,
  INDEX `service_id_idx` (`freelance_service_id` ASC) VISIBLE,
  CONSTRAINT `company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `freelance`.`company_profile` (`company_id`),
  CONSTRAINT `freelance_service_id`
    FOREIGN KEY (`freelance_service_id`)
    REFERENCES `freelance`.`freelance_services` (`freelance_service_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `freelance`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`reviews` (
  `review_id` INT NOT NULL,
  `job_id` INT NULL DEFAULT NULL,
  `rating` DECIMAL(2,1) NULL DEFAULT NULL,
  `comments` VARCHAR(500) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `posted_date` DATETIME NULL DEFAULT NULL,
  `updated_date` DATETIME NULL DEFAULT NULL,
  `is_deleted` TINYINT NULL DEFAULT NULL,
  `like` INT NULL DEFAULT NULL,
  `dislike` INT NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  INDEX `job_id_idx` (`job_id` ASC) VISIBLE,
  CONSTRAINT `job_id`
    FOREIGN KEY (`job_id`)
    REFERENCES `job_portal`.`job_status` (`job_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `freelance`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `freelance`.`service` (
  `service_id` INT NOT NULL,
  `category` VARCHAR(45) NULL DEFAULT NULL,
  `service_name` VARCHAR(45) NULL DEFAULT NULL,
  `service_description` VARCHAR(45) NULL DEFAULT NULL,
  `createdby` VARCHAR(45) NULL DEFAULT NULL,
  `created_date` VARCHAR(45) NULL DEFAULT NULL,
  `updatedby` VARCHAR(45) NULL DEFAULT NULL,
  `updated_date` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;
