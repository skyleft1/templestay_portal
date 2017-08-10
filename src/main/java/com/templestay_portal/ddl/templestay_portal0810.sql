CREATE TABLE `TB_Board` (
	`boardcd` VARCHAR(20) NOT NULL,
	`boardname` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`boardcd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;



CREATE TABLE `TB_Board_Article` (
	`articleno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`userid` VARCHAR(50) NULL DEFAULT NULL,
	`boardcd` VARCHAR(20) NULL DEFAULT NULL,
	`title` VARCHAR(200) NOT NULL,
	`content` MEDIUMTEXT NULL,
	`hit` INT(10) UNSIGNED NULL DEFAULT '0',
	`nowdate` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`articleno`),
	INDEX `board_article_fk` (`boardcd`),
	INDEX `user_article_fk` (`userid`),
	CONSTRAINT `board_article_fk` FOREIGN KEY (`boardcd`) REFERENCES `TB_Board` (`boardcd`),
	CONSTRAINT `user_article_fk` FOREIGN KEY (`userid`) REFERENCES `TB_User` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=31
;


CREATE TABLE `TB_Board_Article_Attachfile` (
	`attachfileno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`articleno` INT(10) UNSIGNED NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`filetype` VARCHAR(30) NULL DEFAULT NULL,
	`filesize` INT(11) NULL DEFAULT NULL,
	`tempfilename` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`attachfileno`),
	INDEX `article_attachfile_fk` (`articleno`),
	CONSTRAINT `article_attachfile_fk` FOREIGN KEY (`articleno`) REFERENCES `TB_Board_Article` (`articleno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;


CREATE TABLE `TB_Board_Article_Comment` (
	`commentno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`articleno` INT(10) UNSIGNED NULL DEFAULT NULL,
	`commentmemo` VARCHAR(4000) NULL DEFAULT NULL,
	`nowdate` DATETIME NULL DEFAULT NULL,
	`userid` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`commentno`),
	INDEX `article_comment_fk` (`articleno`),
	INDEX `user_article_comment_fk` (`userid`),
	CONSTRAINT `FK_TB_Board_Article_Comment_TB_User` FOREIGN KEY (`userid`) REFERENCES `TB_User` (`userid`),
	CONSTRAINT `article_comment_fk` FOREIGN KEY (`articleno`) REFERENCES `TB_Board_Article` (`articleno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;


CREATE TABLE `TB_Reservation` (
	`reservationno` INT(10) NOT NULL AUTO_INCREMENT,
	`programno` INT(10) UNSIGNED NOT NULL,
	`userid` VARCHAR(50) NULL DEFAULT NULL,
	`checkdate` DATETIME NULL DEFAULT NULL,
	`number` INT(50) NULL DEFAULT NULL,
	PRIMARY KEY (`reservationno`),
	INDEX `FK_TB_Reservation_TB_Temple_Program` (`programno`),
	INDEX `FK_TB_Reservation_TB_User` (`userid`),
	CONSTRAINT `FK_TB_Reservation_TB_Temple_Program` FOREIGN KEY (`programno`) REFERENCES `TB_Temple_Program` (`programno`),
	CONSTRAINT `FK_TB_Reservation_TB_User` FOREIGN KEY (`userid`) REFERENCES `TB_User` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

CREATE TABLE `TB_Temple` (
	`templecd` VARCHAR(20) NOT NULL,
	`templename` VARCHAR(30) NULL DEFAULT NULL,
	`templeaddr_postcode` VARCHAR(50) NULL DEFAULT NULL,
	`templeaddr_road` VARCHAR(50) NULL DEFAULT NULL,
	`templeaddr_jibun` VARCHAR(50) NULL DEFAULT NULL,
	`templephone` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `TB_Temple_Program` (
	`programno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`templecd` VARCHAR(20) NOT NULL,
	`programtype` INT(10) UNSIGNED NULL DEFAULT NULL,
	`programname` VARCHAR(30) NULL DEFAULT NULL,
	`programdetail` VARCHAR(50) NULL DEFAULT NULL,
	`programprice` INT(11) NULL DEFAULT NULL,
	`programimage` VARCHAR(50) NULL DEFAULT NULL,
	`maxperson` INT(11) NULL DEFAULT NULL,
	`totalperson` VARCHAR(50) NULL DEFAULT NULL,
	`availabledate` DATE NULL DEFAULT NULL,
	PRIMARY KEY (`programno`),
	INDEX `FK_TB_Temple_Program_TB_Temple` (`templecd`),
	CONSTRAINT `FK_TB_Temple_Program_TB_Temple` FOREIGN KEY (`templecd`) REFERENCES `TB_Temple` (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;


CREATE TABLE `TB_User` (
	`userno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`userid` VARCHAR(50) NOT NULL,
	`username` VARCHAR(30) NULL DEFAULT NULL,
	`userpassword` VARCHAR(30) NULL DEFAULT NULL,
	`useremail` VARCHAR(100) NOT NULL,
	`userphone` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`userid`),
	UNIQUE INDEX `userno` (`userno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;
