-- MySQL Script generated by MySQL Workbench
-- 07/18/15 21:01:55
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema apc-cpo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema apc-cpo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `apc-cpo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `apc-cpo` ;

-- -----------------------------------------------------
-- Table `apc-cpo`.`questionnaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`questionnaire` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `question` TEXT NOT NULL COMMENT '',
  `type` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`final_paper_hdr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`final_paper_hdr` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `attachment` VARCHAR(255) NULL COMMENT '',
  `date_submitted` DATE NOT NULL COMMENT '',
  `rating` INT NULL COMMENT '',
  `rcv_by` VARCHAR(255) NOT NULL COMMENT '',
  `rcv_date` DATE NOT NULL COMMENT '',
  `subj` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`final_paper_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`final_paper_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `final_paper_hdr_id` INT NOT NULL COMMENT '',
  `questionnaire_id` INT NOT NULL COMMENT '',
  `response` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_final_paper_dtl_final_paper_hdr1_idx` (`final_paper_hdr_id` ASC)  COMMENT '',
  INDEX `fk_final_paper_dtl_questionnaire1_idx` (`questionnaire_id` ASC)  COMMENT '',
  CONSTRAINT `fk_final_paper_dtl_final_paper_hdr1`
    FOREIGN KEY (`final_paper_hdr_id`)
    REFERENCES `apc-cpo`.`final_paper_hdr` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_final_paper_dtl_questionnaire1`
    FOREIGN KEY (`questionnaire_id`)
    REFERENCES `apc-cpo`.`questionnaire` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`post` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `title` VARCHAR(255) NOT NULL COMMENT '',
  `author` VARCHAR(255) NOT NULL COMMENT '',
  `date` DATE NOT NULL COMMENT '',
  `body` VARCHAR(255) NOT NULL COMMENT '',
  `attach_file` VARCHAR(255) NULL COMMENT '',
  `upload_file` VARCHAR(255) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`internship`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`internship` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `department` VARCHAR(45) NOT NULL COMMENT '',
  `position` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`attendance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`attendance` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `date` DATE NOT NULL COMMENT '',
  `time_in` TIME NOT NULL COMMENT '',
  `time_out` TIME NOT NULL COMMENT '',
  `hr_head` VARCHAR(255) NOT NULL COMMENT '',
  `internship_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_attendance_internship1_idx` (`internship_id` ASC)  COMMENT '',
  CONSTRAINT `fk_attendance_internship1`
    FOREIGN KEY (`internship_id`)
    REFERENCES `apc-cpo`.`internship` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`eval_hdr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`eval_hdr` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `date_submit` DATE NOT NULL COMMENT '',
  `date_eval` DATE NOT NULL COMMENT '',
  `school_yr` VARCHAR(255) NOT NULL COMMENT '',
  `date_discussed` DATE NOT NULL COMMENT '',
  `subj` VARCHAR(45) NOT NULL COMMENT '',
  `industry_prof` VARCHAR(255) NOT NULL COMMENT '',
  `rcv_by` VARCHAR(255) NOT NULL COMMENT '',
  `rcv_date` DATE NOT NULL COMMENT '',
  `internship_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_eval_hdr_internship1_idx` (`internship_id` ASC)  COMMENT '',
  CONSTRAINT `fk_eval_hdr_internship1`
    FOREIGN KEY (`internship_id`)
    REFERENCES `apc-cpo`.`internship` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`accomplishment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`accomplishment` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `date` DATE NOT NULL COMMENT '',
  `accomplishment` VARCHAR(255) NOT NULL COMMENT '',
  `student_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`eval_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`eval_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `questionnaire_id` INT NOT NULL COMMENT '',
  `eval_hdr_id` INT NOT NULL COMMENT '',
  `response_rating` INT NOT NULL COMMENT '',
  `response_detail` TEXT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_eval_dtl_questionnaire1_idx` (`questionnaire_id` ASC)  COMMENT '',
  INDEX `fk_eval_dtl_eval_hdr1_idx` (`eval_hdr_id` ASC)  COMMENT '',
  CONSTRAINT `fk_eval_dtl_questionnaire1`
    FOREIGN KEY (`questionnaire_id`)
    REFERENCES `apc-cpo`.`questionnaire` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_eval_dtl_eval_hdr1`
    FOREIGN KEY (`eval_hdr_id`)
    REFERENCES `apc-cpo`.`eval_hdr` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`resume_hdr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`resume_hdr` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `mobile_num` CHAR(11) NOT NULL COMMENT '',
  `personal_email` VARCHAR(255) NOT NULL COMMENT '',
  `website` VARCHAR(255) NULL COMMENT '',
  `picture` VARCHAR(255) NOT NULL COMMENT '',
  `student_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`resume_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`resume_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `response` TEXT NOT NULL COMMENT '',
  `resume_hdr_id` INT NOT NULL COMMENT '',
  `questionnaire_id` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `fk_resume_dtl_resume_hdr1_idx` (`resume_hdr_id` ASC)  COMMENT '',
  INDEX `fk_resume_dtl_questionnaire1_idx` (`questionnaire_id` ASC)  COMMENT '',
  CONSTRAINT `fk_resume_dtl_resume_hdr1`
    FOREIGN KEY (`resume_hdr_id`)
    REFERENCES `apc-cpo`.`resume_hdr` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_resume_dtl_questionnaire1`
    FOREIGN KEY (`questionnaire_id`)
    REFERENCES `apc-cpo`.`questionnaire` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
