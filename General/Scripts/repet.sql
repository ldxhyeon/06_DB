


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
	       MEMBER;
	       
	      



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
			BOARD;
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
   
   
   	SELECT
	    B.BOARD_NO, 
	    B.BOARD_TITLE, 
	    B.BOARD_CONTENT, 
	    B.BOARD_WRITE_DATE, 
	    B.READ_COUNT,
	    M.MEMBER_NICKNAME
		FROM 
		    BOARD B
		JOIN 
		    MEMBER M 
		ON 
		    B.MEMBER_NO = M.MEMBER_NO;
		   
		 SELECT
		 	*
		 FROM
		 BOARD_IMG;
		
SELECT
    B.BOARD_NO, 
    B.BOARD_TITLE, 
    B.BOARD_CONTENT, 
    B.BOARD_WRITE_DATE, 
    B.READ_COUNT,
    M.MEMBER_NICKNAME,
    BI.IMG_PATH,
    BI.IMG_RENAME
FROM 
    BOARD B
JOIN 
    MEMBER M 
ON 
    B.MEMBER_NO = M.MEMBER_NO
LEFT JOIN 
    BOARD_IMG BI
ON 
    B.BOARD_NO = BI.BOARD_NO;
   
   SELECT * FROM BOARD_IMG;
	  
   	SELECT
	    B.BOARD_NO,
	    B.BOARD_TITLE, 
	    B.BOARD_CONTENT, 
	    B.BOARD_WRITE_DATE, 
	    B.READ_COUNT,
	    M.MEMBER_NICKNAME
		FROM 
		    BOARD B
		JOIN 
		    MEMBER M 
		ON 
		    B.MEMBER_NO = M.MEMBER_NO;
		   
		   
		SELECT
			*
		FROM
			REPORT_BOARD;
		
		
				   
		SELECT
			*
		FROM
			REPORT_COMMENT;
		
		
		
SELECT 
	COUNT(*)
FROM 
    REPORT_BOARD RB
JOIN 
    BOARD B ON RB.BOARD_NO = B.BOARD_NO
JOIN 
    MEMBER M ON B.MEMBER_NO = M.MEMBER_NO
WHERE 
    B.BOARD_DEL_FL = 'N'
    AND
    B.BOARD_CODE = 2;
   
   
   SELECT 
    B.BOARD_NO,
    B.BOARD_TITLE,
    RB.REPORT_CONTENT,
    RB.REPORT_CATEGORY,
    M.MEMBER_NICKNAME,
    RB.REPORT_WRITE_DATE
FROM 
    REPORT_BOARD RB
JOIN 
    BOARD B ON RB.BOARD_NO = B.BOARD_NO
JOIN 
    MEMBER M ON B.MEMBER_NO = M.MEMBER_NO
WHERE 
    B.BOARD_DEL_FL = 'N'
    AND
    B.BOARD_CODE = 2
ORDER BY 
    RB.REPORT_WRITE_DATE DESC;
   
   
 SELECT 
    ROW_NUMBER() OVER (ORDER BY B.BOARD_NO ASC) AS "RNUM",
    B.BOARD_TITLE,
    RC.REPORT_CATEGORY_CONTENT,
    R.REPORT_WRITE_DATE,
    R.REPORT_CATEGORY AS REPORT_CATEGORY,
    M2.MEMBER_NICKNAME AS REPORT_NICKNAME,
    R.BOARD_NO
FROM 
    "BOARD" B
JOIN 
    "BOARD_TYPE" BT ON (B.BOARD_CODE = BT.BOARD_CODE)
JOIN 
    "REPORT_BOARD" R ON (B.BOARD_NO = R.BOARD_NO)
JOIN 
    "MEMBER" M ON (M.MEMBER_NO = B.MEMBER_NO)
JOIN 
    "REPORT_CATEGORY" RC ON (RC.REPORT_CATEGORY = R.REPORT_CATEGORY)
JOIN 
    "MEMBER" M2 ON (M2.MEMBER_NO = R.MEMBER_NO)  -- 신고한 회원의 닉네임
WHERE 
    B.BOARD_DEL_FL = 'N' 
AND   
    B.BOARD_CODE = 2  -- 보드코드를 2번으로 수정
ORDER BY 
    RNUM DESC;
   
   
		
   
COMMIT;
ROLLBACK;