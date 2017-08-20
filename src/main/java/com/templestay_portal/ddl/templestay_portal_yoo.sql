
-- templestay_portal 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS templestay_portal_yoo;


CREATE DATABASE templestay_portal_yoo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


-- 사용자 추가
GRANT ALL ON templestay_portal_yoo.* TO tester1@localhost IDENTIFIED BY '1234';

FLUSH PRIVILEGES;



-- 데이터베이스 변경
USE templestay_portal_yoo;

DROP TABLE IF EXISTS TB_Upload_Image;
DROP TABLE IF EXISTS tb_reservation;
DROP TABLE IF EXISTS tb_temple_program;
DROP TABLE IF EXISTS tb_temple;
DROP TABLE IF EXISTS tb_user;




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

-- 연습용
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim11', '김일일', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim12', '김일이', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim13', '김일삼', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim14', '김일사', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim15', '김일오', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'kim16', '김일육', '12', 'yoo@naver.com', '01088888888' );

INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park21', '박이일', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park22', '박이이', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park23', '박이삼', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park24', '박이사', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park25', '박이오', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'park26', '박이육', '12', 'yoo@naver.com', '01088888888' );

INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'shin32', '신삼이', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'shin33', '신삼삼', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'shin34', '신삼사', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'shin35', '신삼오', '12', 'yoo@naver.com', '01088888888' );
INSERT INTO tb_user (userid, username, userpassword, useremail, userphone ) 
VALUES( 'shin36', '신삼육', '12', 'yoo@naver.com', '01088888888' );







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
VALUES('경기사', '12001', '경기 가평군 가평읍 이화리 133', '경기 가평군 가평읍 이화리 133', '45720050000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('강원사', '23001', '강원 강릉시 교동 1817-2', '강원 강릉시 교동 1817-2', '91543420000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('제주사', '45001', '제주특별자치도 서귀포시 상예동 4563-3', '제주특별자치도 서귀포시 상예동 4563-3', '07857207540' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('인천사', '67001', '인천 강화군 양도면 조산리 754', '인천 강화군 양도면 조산리 754', '13100757500' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('충남사', '34001', '충남 홍성군 홍북읍 신경리 893', '충남 홍성군 홍북읍 신경리 893', '32101299570' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('충북사', '56001', '충북 괴산군 감물면 오성리 58-1', '충북 괴산군 감물면 오성리 58-1', '54100575880' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('경남사', '85001', '경남 거제시 장승포동 624-3', '경남 거제시 장승포동 624-3', '45787703000' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('경북사', '94001', '경북 경산시 갑제동 296-3', '경북 경산시 갑제동 296-3', '02350066660' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('전남사', '74501', '전남 강진군 강진읍 서성리 379-14', '전남 강진군 강진읍 서성리 379-14', '85155507050' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('전북사', '26001', '전북 고창군 고수면 은사리 901-1', '전북 고창군 고수면 은사리 901-1', '71213333060' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('부산사', '38001', '부산 강서구 생곡동 1598-1', '부산 강서구 생곡동 1598-1', '28100224522' );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone ) 
VALUES('서울사', '62001', '서울 강남구 도곡동 952-9', '서울 강남구 도곡동 952-9', '60111164211' );



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
VALUES('경기사', '자유형', '경기사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-09-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '체험형', '경기사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경기사', '휴식형', '경기사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2018-01-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '자유형', '강원사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '체험형', '강원사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-09-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('강원사', '휴식형', '강원사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2018-01-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '자유형', '제주사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '체험형', '제주사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2018-01-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('제주사', '휴식형', '제주사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '자유형', '인천사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2018-01-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '체험형', '인천사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('인천사', '휴식형', '인천사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-09-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '자유형', '충남사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2018-01-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '체험형', '충남사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충남사', '휴식형', '충남사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '자유형', '충북사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '체험형', '충북사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2018-01-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('충북사', '휴식형', '충북사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-09-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '자유형', '충북사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '체험형', '충북사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '휴식형', '충북사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2018-01-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '자유형', '경북사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-09-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '체험형', '경북사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '휴식형', '경북사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '자유형', '전남사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '체험형', '전남사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2018-01-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전남사', '휴식형', '전남사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-09-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '자유형', '전북사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '체험형', '전북사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('전북사', '휴식형', '전북사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '자유형', '부산사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-09-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '체험형', '부산사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('부산사', '휴식형', '부산사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 12000, '2017-08-10' , '2017-12-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '자유형', '서울사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '체험형', '서울사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 50000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('서울사', '휴식형', '서울사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-09-10' );




CREATE TABLE `tb_reservation` (
    `reservationno` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `programno` INT(10) UNSIGNED NOT NULL,
    `userid` VARCHAR(50) NOT NULL,
    `checkdate` DATE NULL DEFAULT NULL,
    `fixedprice` INT(11) NULL DEFAULT NULL,
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




CREATE TABLE TB_Upload_Image (
    `uploadImageNo` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `fileName` VARCHAR(50) NOT NULL,
    `fileSize` INT(10) UNSIGNED NOT NULL,
    `contentType` VARCHAR(30) NOT NULL,
    `imageBytes` LONGBLOB NULL,
    `imageBase64` LONGTEXT NULL,
    `programno` INT(10) UNSIGNED NULL DEFAULT NULL,
    PRIMARY KEY (`uploadImageNo`),
    INDEX `FK_tb_upload_image_tb_temple_program` (`programno`),
    CONSTRAINT `FK_tb_upload_image_tb_temple_program` FOREIGN KEY (`programno`) REFERENCES `tb_temple_program` (`programno`)
)
ENGINE=InnoDB 
AUTO_INCREMENT=1 
DEFAULT CHARACTER SET utf8 
COLLATE utf8_general_ci
;










