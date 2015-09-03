SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `apc-cpo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `apc-cpo` ;

-- -----------------------------------------------------
-- Table `apc-cpo`.`questionnaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`questionnaire` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question` TEXT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`final_paper_hdr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`final_paper_hdr` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `attachment` VARCHAR(255) NULL,
  `date_submitted` DATE NOT NULL,
  `rating` INT NULL,
  `rcv_by` VARCHAR(255) NOT NULL,
  `rcv_date` DATE NOT NULL,
  `subj` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`final_paper_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`final_paper_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `final_paper_hdr_id` INT NOT NULL,
  `questionnaire_id` INT NOT NULL,
  `response` TEXT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_final_paper_dtl_final_paper_hdr1_idx` (`final_paper_hdr_id` ASC),
  INDEX `fk_final_paper_dtl_questionnaire1_idx` (`questionnaire_id` ASC),
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
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `date` DATE NOT NULL,
  `body` VARCHAR(255) NOT NULL,
  `attach_file` VARCHAR(255) NULL,
  `upload_file` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`attendance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`attendance` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `time_in` TIME NOT NULL,
  `time_out` TIME NOT NULL,
  `hr_head` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`eval_hdr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`eval_hdr` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_submit` DATE NOT NULL,
  `date_eval` DATE NOT NULL,
  `school_yr` VARCHAR(255) NOT NULL,
  `date_discussed` DATE NOT NULL,
  `subj` VARCHAR(45) NOT NULL,
  `industry_prof` VARCHAR(255) NOT NULL,
  `rcv_by` VARCHAR(255) NOT NULL,
  `rcv_date` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`accomplishment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`accomplishment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `accomplishment` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`eval_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`eval_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `questionnaire_id` INT NOT NULL,
  `eval_hdr_id` INT NOT NULL,
  `response_rating` INT NOT NULL,
  `response_detail` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_eval_dtl_questionnaire1_idx` (`questionnaire_id` ASC),
  INDEX `fk_eval_dtl_eval_hdr1_idx` (`eval_hdr_id` ASC),
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
  `id` INT NOT NULL AUTO_INCREMENT,
  `mobile_num` CHAR(11) NOT NULL,
  `personal_email` VARCHAR(255) NOT NULL,
  `website` VARCHAR(255) NULL,
  `picture` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apc-cpo`.`resume_dtl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`resume_dtl` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `response` TEXT NOT NULL,
  `resume_hdr_id` INT NOT NULL,
  `questionnaire_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_resume_dtl_resume_hdr1_idx` (`resume_hdr_id` ASC),
  INDEX `fk_resume_dtl_questionnaire1_idx` (`questionnaire_id` ASC),
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


-- -----------------------------------------------------
-- Table `apc-cpo`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apc-cpo`.`comment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `body` TEXT NOT NULL,
  `date` DATE NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_post1_idx` (`post_id` ASC),
  CONSTRAINT `fk_comment_post1`
    FOREIGN KEY (`post_id`)
    REFERENCES `apc-cpo`.`post` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
