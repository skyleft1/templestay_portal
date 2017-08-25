
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
    `userno` INT(10) NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(50) NOT NULL,
    `username` VARCHAR(40) NOT NULL,
    `userpassword` VARCHAR(40) NOT NULL,
    `password_hint` VARCHAR(40) NULL DEFAULT NULL,
    `password_hint_confirm` VARCHAR(40) NULL DEFAULT NULL,
    `usersex` CHAR(1) NULL DEFAULT NULL,
    `useremail` VARCHAR(40) NULL DEFAULT NULL,
    `userphone` VARCHAR(40) NULL DEFAULT NULL,
    `addr_postcode` VARCHAR(40) NULL DEFAULT NULL,
    `addr_road` VARCHAR(40) NULL DEFAULT NULL,
    `addr_jibun` VARCHAR(40) NULL DEFAULT NULL,
    `joindate` DATETIME NULL DEFAULT NULL,
    PRIMARY KEY (`userid`),
    UNIQUE INDEX `userno` (`userno`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
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
     `lat` FLOAT NULL DEFAULT NULL,
     `lng` FLOAT NULL DEFAULT NULL,
    PRIMARY KEY (`templecd`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng ) 
VALUES('경기사', '12001', '경기 가평군 가평읍 이화리 133', '경기 가평군 가평읍 이화리 133', '45720050000' , 37.784854, 127.509339 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng ) 
VALUES('강원사', '23001', '강원 강릉시 교동 1817-2', '강원 강릉시 교동 1817-2', '91543420000' , 37.769166, 128.876695 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('제주사', '45001', '제주특별자치도 서귀포시 상예동 4563-3', '제주특별자치도 서귀포시 상예동 4563-3', '07857207540', 33.271507, 126.373903 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng ) 
VALUES('인천사', '67001', '인천 강화군 양도면 조산리 754', '인천 강화군 양도면 조산리 754', '13100757500' , 37.647581, 126.425636 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('충남사', '34001', '충남 홍성군 홍북읍 신경리 893', '충남 홍성군 홍북읍 신경리 893', '32101299570' , 36.560111, 126.692362 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('충북사', '56001', '충북 괴산군 감물면 오성리 58-1', '충북 괴산군 감물면 오성리 58-1', '54100575880' , 36.837464, 127.868460 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('경남사', '85001', '경남 거제시 장승포동 624-3', '경남 거제시 장승포동 624-3', '45787703000' , 34.859242, 128.719780 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('경북사', '94001', '경북 경산시 갑제동 296-3', '경북 경산시 갑제동 296-3', '02350066660' , 35.829417, 128.763482 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('전남사', '74501', '전남 강진군 강진읍 서성리 379-14', '전남 강진군 강진읍 서성리 379-14', '85155507050' , 34.631790, 126.757682 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng ) 
VALUES('전북사', '26001', '전북 고창군 고수면 은사리 901-1', '전북 고창군 고수면 은사리 901-1', '71213333060' , 35.378338, 126.709059 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng   ) 
VALUES('부산사', '38001', '부산 강서구 생곡동 1598-1', '부산 강서구 생곡동 1598-1', '28100224522' , 35.132699, 128.878234 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('서울사', '62001', '서울 강남구 도곡동 952-9', '서울 강남구 도곡동 952-9', '60111164211' , 37.485939, 127.034097 );

INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('금강정사', '12801', '경기도 광명시 소하동 341-10', '경기도 광명시 소하동 341-10', '02-899-7366' , 37.441850, 126.873150 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('월정사', '27801', '강원도 평창군 진부면 동산리 63-1', '강원도 평창군 진부면 동산리 63-1', '033-339-6606' , 37.731619, 128.592140 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('백담사', '86401', '강원도 인제군 북면 백담로 746', '강원도 인제군 북면 백담로 746', '033-462-6969' , 38.164597, 128.373795 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('관음사', '93501', '제주특별자치도 제주시 오등동', '제주특별자치도 제주시 오등동', '064-756-9950' , 33.424924, 126.553918 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('도권사', '45201', '인천광역시 부평구 청천2동 176', '인천광역시 부평구 청천2동 176', '010-3405-0123' , 37.514142, 126.708015 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('지장정사', '77541', '충남 논산시 노성면 화곡안길 103', '충남 논산시 노성면 화곡안길 103', '041-732-5629' , 36.329863, 127.112809 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('우암사', '18671', '충북 청주시 상당구 중앙동 81-1', '충북 청주시 상당구 중앙동 81-1', '010-5831-0342' , 36.647798, 127.495867 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('창원사', '05751', '경남 창원시 마산회원구 회원동 54-12', '경남 창원시 마산회원구 회원동 54-12', '010-1035-2353' , 35.217638, 128.573401 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('자비선사', '88471', '경북 성주군 수륜면 계정리 1414-1', '경북 성주군 수륜면 계정리 1414-1', '054-931-8874' , 35.794126, 128.220217 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('쌍봉사', '09301', '전남 화순군 이양면 쌍산의로 459', '전남 화순군 이양면 쌍산의로 459', '010-1043-5631' , 34.887473, 127.059790 );
INSERT INTO tb_temple (templecd, templeaddr_postcode, templeaddr_road, templeaddr_jibun, templephone , lat , lng  ) 
VALUES('개암사', '64781', '전북 부안군 상서면 감교리 714', '전북 부안군 상서면 감교리 714', '063-583-3871' , 35.662363, 126.649857 );





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
, 30000, '2017-08-10' , '2017-10-10' );
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
, 24000, '2017-08-10' , '2017-10-10' );
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
, 12000, '2017-08-10' , '2017-10-10' );

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
, 18000, '2017-08-10' , '2017-10-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '자유형', '경남사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '체험형', '경남사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경남사', '휴식형', '경남사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2018-01-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('경북사', '자유형', '경북사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-10-10' );
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
, 18000, '2017-08-10' , '2017-10-10' );


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
, 30000, '2017-08-10' , '2017-10-10' );
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
, 18000, '2017-08-10' , '2017-10-10' );



-- 추가된 데이터
-- 경기 1개  금강정사
-- 경기도 광명시 설월로 58 (소하동) 02-899-7366
-- 휴

-- 강원 5개 월정사 백담사
-- 강원도 평창군 진부면 오대산로 374-8 (월정사) 033-339-6606/033-339-6607(외국어)
-- 강원도 인제군 북면 백담로 746 (백담사) 033-462-5565
-- 휴 자자자 체

-- 제주 3개 관음사
-- 제주특별자치도 제주시 산록북로 660 (아라일동) 064-724-6830
-- 자자자

-- 인천 1개 도권사
-- 체

-- 충남 2개 지장정사
-- 충청남도 서산시 부춘산1로 44 (읍내동) 041-664-2002
-- 휴 자

-- 충북 2개 우암사
-- 휴휴

-- 경남 1개 창원사
-- 자

-- 경북 1개 자비선사
-- 경상북도 성주군 수륜면 계정길 208 (자비선사) 054-931-8874
-- 자

-- 전남 3개 쌍봉사
-- 전라남도 화순군 이양면 쌍산의로 459 (쌍봉사) 061-372-3765
-- 휴 자자

-- 전북 2개 개암사
-- 전라북도 부안군 상서면 개암로 248 (개암사) 063-581-0080
-- 휴휴

-- 총 21개

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('금강정사', '자유형', '금강정사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-10-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '휴식형', '월정사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '자유형', '월정사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 34000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '자유형', '월정사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('백담사', '자유형', '백담사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('백담사', '체험형', '백담사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('관음사', '자유형', '관음사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 24000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('관음사', '자유형', '관음사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 34000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('관음사', '자유형', '관음사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('도권사', '체험형', '도권사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );


INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('지장정사', '휴식형', '지장정사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 26000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('지장정사', '자유형', '지장정사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 19000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('우암사', '휴식형', '우암사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 30000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('우암사', '휴식형', '우암사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 42000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('창원사', '자유형', '창원사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 26000, '2017-08-10' , '2017-10-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('자비선사', '자유형', '자비선사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 27000, '2017-08-10' , '2017-12-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('쌍봉사', '휴식형', '쌍봉사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 32000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('쌍봉사', '자유형', '쌍봉사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 42000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('쌍봉사', '자유형', '쌍봉사 프로그램 제목03', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 18000, '2017-08-10' , '2017-10-10' );

INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('개암사', '휴식형', '개암사 프로그램 제목01', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 33000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('개암사', '휴식형', '개암사 프로그램 제목02', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 44000, '2017-08-10' , '2017-10-10' );


-- 월정사(강원도) 3개 추가
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '휴식형', '월정사 프로그램 제목04', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 19000, '2017-08-10' , '2017-10-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '자유형', '월정사 프로그램 제목05', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 28000, '2017-08-10' , '2017-12-10' );
INSERT INTO tb_temple_program(templecd, programtype, programname, programdetail, programprice, availabledate_start, availabledate_end ) 
VALUES('월정사', '체험형', '월정사 프로그램 제목06', '연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다. 연습용 내용입니다.'
, 32500, '2017-08-10' , '2017-10-10' );




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
    `fileName` VARCHAR(50) NULL DEFAULT NULL,
    `fileSize` INT(10) UNSIGNED NULL DEFAULT NULL,
    `contentType` VARCHAR(30) NULL DEFAULT NULL,
    `imageBytes` LONGBLOB NULL DEFAULT NULL,
    `imageBase64` LONGTEXT NULL DEFAULT NULL,
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



