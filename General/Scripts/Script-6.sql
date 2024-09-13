/* 관리자 계정(sys) 접속 후 수행*/

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 계정 생성
CREATE USER SPRING_LDH IDENTIFIED BY SPRING1234;

-- 권한 부여
GRANT CONNECT, RESOURCE TO SPRING_LDH;

-- 테이블 저장 공간 할당
ALTER USER SPRING_LDH
DEFAULT TABLESPACE USERS
QUOTA 100M ON USERS;

--------------------------------------------------------------------

/* SPRING 계정 접속 후 테이블, 시퀀스 생성 */
/* 회원("MEMBER") */
CREATE TABLE "MEMBER"(
	"MEMBER_NO" 		NUMBER,
	"MEMBER_EMAIL" 		VARCHAR2(50)  NOT NULL,
	"MEMBER_PW" 		VARCHAR2(100) NOT NULL,
	"MEMBER_NICKNAME"   NVARCHAR2(10) NOT NULL,
	"MEMBER_TEL"		CHAR(11)      NOT NULL,
	"MEMBER_ADDRESS"	NVARCHAR2(150),
	"PROFILE_IMG"		VARCHAR2(300),
	"ENROLL_DATE"		DATE DEFAULT CURRENT_DATE,
	"MEMBER_DEL_FL"		CHAR(1) DEFAULT 'N',
	"AUTHORITY"			NUMBER DEFAULT 1,
	CONSTRAINT "MEMBER_PK" PRIMARY KEY("MEMBER_NO"),
	
	CONSTRAINT "MEMBER_DEL_FL_CHK"
	CHECK("MEMBER_DEL_FL" IN ('Y', 'N')),
	
	CONSTRAINT "AUTHORITY_CHK"
	CHECK("AUTHORITY" IN (1, 2))
);


-- COMMENT 추가
COMMENT ON COLUMN "MEMBER"."MEMBER_NO" 		 IS '회원 번호(PK)';
COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" 	 IS '회원 이메일(ID)';
COMMENT ON COLUMN "MEMBER"."MEMBER_PW" 		 IS '회원 비밀번호';
COMMENT ON COLUMN "MEMBER"."MEMBER_NICKNAME" IS '회원명(별명)';
COMMENT ON COLUMN "MEMBER"."MEMBER_TEL" 	 IS '회원 전화번호(-제외)';
COMMENT ON COLUMN "MEMBER"."MEMBER_ADDRESS"  IS '회원 주소';
COMMENT ON COLUMN "MEMBER"."PROFILE_IMG" 	 IS '프로필 이미지 경로';
COMMENT ON COLUMN "MEMBER"."ENROLL_DATE" 	 IS '가입일';
COMMENT ON COLUMN "MEMBER"."MEMBER_DEL_FL"   IS '탈퇴 여부(Y,N)';
COMMENT ON COLUMN "MEMBER"."AUTHORITY" 		 IS '권한(1:일반, 2:관리자)';


-- 회원 번호 시퀀스 생성
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE;

-- 샘플 회원 데이터 삽입
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'member01@kh.or.kr', 'pass01!',
	  '샘플1', '01012341234', NULL, NULL,
	   DEFAULT, DEFAULT, DEFAULT);
	  
COMMIT;

SELECT * FROM "MEMBER";


-- 샘플 데이터 비밀번호 암호화 적용
UPDATE "MEMBER"
SET
	"MEMBER_PW" = '$2a$10$KzFKEvO4C65xBTetZDV8QufZvhQnIGU0SE5ZEaZo0T9SrdYS5oFMC'
WHERE
	"MEMBER_NO" = 1;

COMMIT;

SELECT * FROM "MEMBER";




