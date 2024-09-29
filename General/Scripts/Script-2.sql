CREATE TABLE TB_USER(
	USER_NO     NUMBER CONSTRAINT TB_USER_PK PRIMARY KEY,
	USER_ID     VARCHAR2(30) NOT NULL,
	USER_PW     VARCHAR2(30) NOT NULL,
	USER_NAME   VARCHAR2(30) NOT NULL,
	ENROLL_DATE DATE DEFAULT CURRENT_DATE
);

COMMENT ON COLUMN TB_USER.USER_NO     IS '사용자 번호';
COMMENT ON COLUMN TB_USER.USER_ID     IS '사용자 아이디';
COMMENT ON COLUMN TB_USER.USER_PW     IS '사용자 비밀번호';
COMMENT ON COLUMN TB_USER.USER_NAME   IS '사용자 이름';
COMMENT ON COLUMN TB_USER.ENROLL_DATE IS '사용자 가입일';


-- USER_NO 컬럼에 삽입될 시퀀스 생성
CREATE SEQUENCE SEQ_USER_NO NOCACHE;

-- 샘플 데이터 INSERT
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user01', 'pass01', '유저일', DEFAULT );
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user02', 'pass02', '유저이', DEFAULT );
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user02', 'pass02', '유저이', DEFAULT );
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user02', 'pass02', '유저이', DEFAULT );
INSERT INTO TB_USER 
VALUES(SEQ_USER_NO.NEXTVAL, 'user055', 'pass055', '유저이25', DEFAULT );


SELECT * FROM TB_USER
ORDER BY
5;


-- 모든 USER 조회
SELECT
	USER_NO,
	USER_ID,
	USER_PW,
	USER_NAME,
	TO_CHAR(ENROLL_DATE, 'YYYY"년" MM"월" DD"일"')ENROLL_DATE
FROM
	TB_USER
ORDER BY
	USER_NO ASC;

COMMIT;

-- 검색어가 이름에 포함된 User 조회
SELECT
	USER_NO,
	USER_ID,
	USER_PW,
	USER_NAME,
	TO_CHAR(ENROLL_DATE, 'YYYY"년" MM"월" DD"일"')ENROLL_DATE
FROM
	TB_USER
WHERE
	USER_NAME LIKE '%' || '이' || '%'
ORDER BY
	USER_NO ASC;



-- USER_NO 를 입력 받아 일치하는 User 삭제(DELETE)
DELETE
FROM
	TB_USER
WHERE
	USER_NO = 31;
-- 일치하는 USER_NO가 있을 경우 : 1행 삭제
-- 일치하는 USER_NO가 있을 경우 : 0행 삭제
	

COMMIT;


-- ID, PW가 일치하는 회원 조회
SELECT
	USER_NO
FROM
	TB_USER
WHERE
	USER_ID = 'dlehdgus'
	AND
	USER_PW = '0712';


-- USER_NO(PK)가 일치하는 회원의 이름을 수정
UPDATE
	TB_USER
SET
	USER_NAME = '이순신 장군'
WHERE	
	USER_NO = 4;


SELECT * FROM TB_USER
ORDER BY
USER_NO;
ROLLBACK;


-- 중복되는 아이디가 있는지 조회
-- 중복이면 1, 아니면 0
SELECT COUNT(*)
FROM
	TB_USER
WHERE
	USER_ID = 'dlehdgus';





SELECT * FROM TB_USER
ORDER BY 5;           






