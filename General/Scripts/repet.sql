


-------------- 세미 프로젝트 DB -------------------------


/* SYS 관리자 계정으로 수행하는 SQL */
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

CREATE USER REPET IDENTIFIED BY RP1234;

GRANT RESOURCE, CONNECT TO REPET;

ALTER USER REPET DEFAULT TABLESPACE USERS QUOTA 500M ON USERS;


----------------------------------------- 회원 추가 ------------------------------------------------

INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'tjdduqdl@naver.com', '1234', '성엽이', '천안', 'IMG', DEFAULT, DEFAULT
);


INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'ddddd@naver.com', '1234', '개울깅', '서울', 'IMG', DEFAULT, DEFAULT
);


INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'ddddd@naver.com', '1234', '개울깅', '서울', 'IMG', DEFAULT, DEFAULT
);


INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, '123123@naver.com', 'sdadas', '양양양', '서울', 'IMG', DEFAULT, DEFAULT
);

INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'zxcmxc@naver.com', 'rkgnc', '갱갱갱', '촌안', 'IMG', DEFAULT, DEFAULT
);



--------------------------------------------------------------------------------------



----------------------------------------- 게시판 샘플 ------------------------------------------------

INSERT INTO
	"BOARD"
VALUES
(
	SEQ_BOARD_NO.NEXTVAL, '안녕', '성엽이 바보', DEFAULT, NULL, DEFAULT, DEFAULT, 3, 2
);

INSERT INTO
	"BOARD"
VALUES
(
	SEQ_BOARD_NO.NEXTVAL, '안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕', '성엽이 바보', DEFAULT, NULL, DEFAULT, DEFAULT, 3, 2
);


INSERT INTO
	"BOARD"
VALUES
(
	SEQ_BOARD_NO.NEXTVAL, '안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕', '성엽이 바보', DEFAULT, NULL, DEFAULT, DEFAULT, 3, 2
);

INSERT INTO
	"BOARD"
VALUES
(
	SEQ_BOARD_NO.NEXTVAL, '안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕', '성엽이 바보', DEFAULT, NULL, DEFAULT, DEFAULT, 3, 2
);

--------------------------------------------------------------------------------------

----------------
-------------------- 게시물 좋아요 샘플 ------------------------------------


INSERT INTO
	"BOARD_LIKE"
VALUES
(
	100,6
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	101,6
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	102,6
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	103,6
);
---------------------------------------------------------------------------------------




COMMIT;
ROLLBACK;


SELECT 
    B.BOARD_NO, 
    B.BOARD_TITLE, 
    B.BOARD_CONTENT, 
    B.BOARD_WRITE_DATE, 
    B.READ_COUNT
FROM 
    BOARD_LIKE BL
JOIN 
    BOARD B 
ON 
    BL.BOARD_NO = B.BOARD_NO
WHERE 
    BL.MEMBER_NO = 3;
   
 SELECT
 	*
 	FROM
 	MEMBER;
 
 COMMIT;


SELECT
*
FROM
BOARD;

SELECT
*
FROM
BOARD_LIKE;

SELECT
COUNT(*)
FROM
BOARD_LIKE
WHERE
MEMBER_NO = 3;



SELECT
	*
FROM
	"MEMBER";