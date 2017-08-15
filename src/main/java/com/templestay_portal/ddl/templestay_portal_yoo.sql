
-- templestay_portal 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS templestay_portal_yoo;


CREATE DATABASE templestay_portal_yoo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


-- 사용자 추가
GRANT ALL ON templestay_portal_yoo.* TO tester1@localhost IDENTIFIED BY '1234';

FLUSH PRIVILEGES;



-- 데이터베이스 변경
USE templestay_portal_yoo;

DROP TABLE IF EXISTS tb_board;
DROP TABLE IF EXISTS tb_board_article;
DROP TABLE IF EXISTS tb_board_article_attachfile;
DROP TABLE IF EXISTS tb_board_article_comment;

DROP TABLE IF EXISTS tb_reservation;
DROP TABLE IF EXISTS tb_temple;
DROP TABLE IF EXISTS tb_temple_program;
DROP TABLE IF EXISTS tb_user;


CREATE TABLE `tb_board` (
	`boardcd` VARCHAR(20) NOT NULL,
	`boardname` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`boardcd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `tb_user` (
	`userno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`userid` VARCHAR(50) NOT NULL,
	`username` VARCHAR(30) NULL DEFAULT NULL,
	`userpassword` VARCHAR(30) NULL DEFAULT NULL,
	`useremail` VARCHAR(100) NOT NULL,
	`userephone` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`userid`),
	UNIQUE INDEX `userno` (`userno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;



CREATE TABLE `tb_board_article` (
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
	CONSTRAINT `board_article_fk` FOREIGN KEY (`boardcd`) REFERENCES `tb_board` (`boardcd`),
	CONSTRAINT `user_article_fk` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=31
;

CREATE TABLE `tb_board_article_attachfile` (
	`attachfileno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`articleno` INT(10) UNSIGNED NULL DEFAULT NULL,
	`filename` VARCHAR(50) NULL DEFAULT NULL,
	`filetype` VARCHAR(30) NULL DEFAULT NULL,
	`filesize` INT(11) NULL DEFAULT NULL,
	`tempfilename` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`attachfileno`),
	INDEX `article_attachfile_fk` (`articleno`),
	CONSTRAINT `article_attachfile_fk` FOREIGN KEY (`articleno`) REFERENCES `tb_board_article` (`articleno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;


CREATE TABLE `tb_board_article_comment` (
	`commentno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`articleno` INT(10) UNSIGNED NULL DEFAULT NULL,
	`commentmemo` VARCHAR(4000) NULL DEFAULT NULL,
	`nowdate` DATETIME NULL DEFAULT NULL,
	`userid` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`commentno`),
	INDEX `article_comment_fk` (`articleno`),
	INDEX `user_comment_fk` (`userid`),
	CONSTRAINT `article_comment_fk` FOREIGN KEY (`articleno`) REFERENCES `tb_board_article` (`articleno`),
	CONSTRAINT `user_comment_fk` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;




CREATE TABLE `tb_temple` (
	`templecd` VARCHAR(30) NOT NULL,
	`templeaddr_postcode` VARCHAR(50) NULL DEFAULT NULL,
	`templeaddr_road` VARCHAR(50) NULL DEFAULT NULL,
	`templeaddr_jibun` VARCHAR(50) NULL DEFAULT NULL,
	`templephone` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `tb_temple_program` (
	`programno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`templecd` VARCHAR(30) NULL DEFAULT NULL,
	`programtype` INT(11) NULL DEFAULT NULL,
	`programname` VARCHAR(30) NULL DEFAULT NULL,
	`programdetail` VARCHAR(50) NULL DEFAULT NULL,
	`programprice` INT(11) NULL DEFAULT NULL,
	`programimage` VARCHAR(50) NULL DEFAULT NULL,
	`maxperson` INT(11) NULL DEFAULT NULL,
	`totalperson` INT(11) NULL DEFAULT NULL,
	`availabledate` DATE NULL DEFAULT NULL,
	PRIMARY KEY (`programno`),
	INDEX `temple_program_fk` (`templecd`),
	CONSTRAINT `temple_program_fk` FOREIGN KEY (`templecd`) REFERENCES `tb_temple` (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('일각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('이각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('삼각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('일각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('이각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('삼각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('일각사', '체험형', '연습이름aaa', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('이각사', '체험형', '연습이름aaa', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice) 
VALUES('삼각사', '체험형', '연습이름aaa', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000 );


CREATE TABLE `tb_reservation` (
	`reservationno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`programno` INT(10) UNSIGNED NOT NULL,
	`userid` VARCHAR(50) NOT NULL,
	`checkdate` DATETIME NULL DEFAULT NULL,
	`number` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`reservationno`),
	INDEX `FK_tb_reservation_tb_user` (`userid`),
	INDEX `FK_tb_reservation_tb_temple_program` (`programno`),
	CONSTRAINT `FK_tb_reservation_tb_temple_program` FOREIGN KEY (`programno`) REFERENCES `tb_temple_program` (`programno`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK_tb_reservation_tb_user` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`userid`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

