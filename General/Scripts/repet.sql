


-------------- 세미 프로젝트 DB -------------------------


/* SYS 관리자 계정으로 수행하는 SQL */
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

CREATE USER REPET IDENTIFIED BY RP1234;

GRANT RESOURCE, CONNECT TO REPET;

ALTER USER REPET DEFAULT TABLESPACE USERS QUOTA 500M ON USERS;


CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE;

DROP SEQUENCE SEQ_MEMBER_NO;



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
	SEQ_MEMBER_NO.NEXTVAL, 'sample1@naver.com', '123', '갱갱갱2', '촌안1', NULL, DEFAULT, DEFAULT
);

INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'sample2@naver.com', '123', '갱갱갱1', '촌안3', NULL, DEFAULT, DEFAULT
);

INSERT INTO
	"MEMBER"
VALUES
(
	SEQ_MEMBER_NO.NEXTVAL, 'sample3@naver.com', '124', '갱갱갱', '촌안2', NULL, DEFAULT, DEFAULT
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


------------------------------------ 게시물 좋아요 샘플 ------------------------------------


INSERT INTO
	"BOARD_LIKE"
VALUES
(
	171,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	172,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	173,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	174,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	175,3
);

---------------------------------------------------------------------------------------


SELECT
*
FROM
BOARD_IMG;

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
    BL.MEMBER_NO =22
    AND
    B.BOARD_CODE = 2;
   
 SELECT
 	*
 FROM
 		MEMBER;
 
UPDATE "MEMBER"
SET PROFILE_IMG = NULL;

 
 COMMIT;


SELECT
*
FROM
BOARD
WHERE
BOARD_NO = 17
AND BOARD_CODE = 2;

SELECT
*
FROM
BOARD_LIKE;

SELECT
COUNT(*)
FROM
BOARD_LIKE
WHERE
MEMBER_NO = 22;

SELECT
	        COUNT(*)
	    FROM
	        BOARD_LIKE BL
	    JOIN
	        BOARD B
	    ON
	        BL.BOARD_NO = B.BOARD_NO
	    WHERE
	        BL.MEMBER_NO = 22
	        AND B.BOARD_CODE = 2
	        AND B.BOARD_DEL_FL = 'N';



SELECT
	*
FROM
	"BOARD";

DELETE
FROM
	MEMBER
WHERE
MEMBER_NO = 21;


UPDATE
	MEMBER
SET
	MEMBER_DEL_FL = 'Y'
WHERE
	MEMBER_NO = 28;

		SELECT
			COUNT(*)
		FROM
			BOARD
		WHERE
			MEMBER_NO = 22;
		
		
		
		SELECT
			*
		FROM
			BOARD
		WHERE
			MEMBER_NO = 22;
		
		
		
		SELECT
			*
		FROM
			BOARD
		WHERE
			MEMBER_NO = 22
			AND
			BOARD_DEL_FL = 'N';
		
		
		INSERT INTO
			BOARD_COMMENT
		VALUES
		(
			SEQ_COMMENT_NO.NEXTVAL, '테스트8', DEFAULT, 'N', 1125, 22, 3
		);
		
	SELECT 
		*
	FROM 
		BOARD_COMMENT
	WHERE 
		MEMBER_NO = 22
	  	AND
	  	COMMENT_DEL_FL = 'N';
	
   
   SELECT 
   	*
   FROM
   	BOARD_TYPE;
	  
COMMIT;
ROLLBACK;