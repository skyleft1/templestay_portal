
-- templestay_portal 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS templestay_portal_yoo;


CREATE DATABASE templestay_portal_yoo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


-- 사용자 추가
GRANT ALL ON templestay_portal_yoo.* TO tester1@localhost IDENTIFIED BY '1234';

FLUSH PRIVILEGES;



-- 데이터베이스 변경
USE templestay_portal_yoo;

DROP TABLE IF EXISTS tb_board_article_attachfile;
DROP TABLE IF EXISTS tb_board_article_comment;
DROP TABLE IF EXISTS tb_board_article;
DROP TABLE IF EXISTS tb_board;

DROP TABLE IF EXISTS tb_reservation;
DROP TABLE IF EXISTS tb_temple_program;
DROP TABLE IF EXISTS tb_temple;
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
    `useremail` VARCHAR(100) NULL DEFAULT NULL,
    `userphone` VARCHAR(100) NULL DEFAULT NULL,
    `addr_postcode` VARCHAR(100) NULL DEFAULT NULL,
    `addr_road` VARCHAR(100) NULL DEFAULT NULL,
    `addr_jibun` VARCHAR(100) NULL DEFAULT NULL,
     `joindate` Date NULL DEFAULT NULL,
    PRIMARY KEY (`userid`),
    UNIQUE INDEX `userno` (`userno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;

INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'admin', 'admin', '12', 'admin@admin.com', '01012341234' );

INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'yoo1', 'yoo1', '12', 'yoo1@naver.com', '01088888888' );


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
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('일각사', '00001', '경기 이천시 대월면 대대리 726', '경기 이천시 대월면 대대리 726', '01024242485'  );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('이각사', '22001', '강원 영월군 영월읍 영흥리 660-1', '강원도 영월군 영월읍 영흥리 660-1', '087395425'  );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('삼각사', '33001', '충북 제천시 금성면 적덕리 산14-6', '충청북도 제천시 금성면 적덕리 산14-6', '0145845690'  );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('사각사', '44001', '제주특별자치도 제주시 애월읍 장전리 926', '제주특별자치도 제주시 애월읍 장전리 926', '748845690'  );

INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('경기사', '00001', '경기 가평군 가평읍 이화리 133', '경기 가평군 가평읍 이화리 133', '45720050000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('강원사', '00001', '강원 강릉시 교동 1817-2', '강원 강릉시 교동 1817-2', '91543420000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('제주사', '00001', '제주특별자치도 서귀포시 상예동 4563-3', '제주특별자치도 서귀포시 상예동 4563-3', '07800207540' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('인천사', '00001', '인천 강화군 양도면 조산리 754', '인천 강화군 양도면 조산리 754', '00100757500' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('충남사', '00001', '충남 홍성군 홍북읍 신경리 893', '충남 홍성군 홍북읍 신경리 893', '00100099990' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('충북사', '00001', '충북 괴산군 감물면 오성리 58-1', '충북 괴산군 감물면 오성리 58-1', '00100008880' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('경남사', '00001', '경남 거제시 장승포동 624-3', '경남 거제시 장승포동 624-3', '00177700000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('경북사', '00001', '경북 경산시 갑제동 296-3', '경북 경산시 갑제동 296-3', '00100066660' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('전남사', '00001', '전남 강진군 강진읍 서성리 379-14', '전남 강진군 강진읍 서성리 379-14', '00155507000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('전북사', '00001', '전북 고창군 고수면 은사리 901-1', '전북 고창군 고수면 은사리 901-1', '00103333000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('부산사', '00001', '부산 강서구 생곡동 1598-1', '부산 강서구 생곡동 1598-1', '00100222222' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('서울사', '00001', '서울 강남구 도곡동 952-9', '서울 강남구 도곡동 952-9', '00111111111' );

CREATE TABLE `tb_temple_program` (
    `programno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `templecd` VARCHAR(30) NULL DEFAULT NULL,
    `programtype` VARCHAR(50) NULL DEFAULT NULL,
    `programname` VARCHAR(30) NULL DEFAULT NULL,
    `programdetail` TEXT NULL,
    `programprice` INT(11) NULL DEFAULT NULL,
    `programimage` BLOB NULL,
    `maxperson` INT(11) NULL DEFAULT NULL,
    `totalperson` INT(11) NULL DEFAULT NULL,
    `availabledate_start` DATE NULL DEFAULT NULL,
    `availabledate_end` DATE NULL DEFAULT NULL,
    `checkdate` DATE NULL DEFAULT NULL,
    PRIMARY KEY (`programno`),
    INDEX `temple_program_fk` (`templecd`),
    CONSTRAINT `temple_program_fk` FOREIGN KEY (`templecd`) REFERENCES `tb_temple` (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=27
;

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('일각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('이각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('삼각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('사각사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('사각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('사각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('사각사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('사각사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 5000, '2017-09-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '자유형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '체험형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


-- 날짜 검증을 위한 부분 
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-10-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-10-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-11-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-11-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2018-01-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2018-01-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2018-02-01' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '연습이름1', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2018-02-01' );


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

