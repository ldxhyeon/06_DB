SELECT 
*
FROM
MEMBER;


SELECT
*
FROM
NOTICE;

SELECT
*
FROM
QUESTION;



SELECT 
    QUESTION_NO,
    QUESTION_CONTENT,
    QUESTION_ANSWER
FROM (
    SELECT 
        QUESTION_NO,
        QUESTION_CONTENT,
        QUESTION_ANSWER,
        QUESTION_DATE
    FROM 
        "QUESTION"
    ORDER BY 
        QUESTION_DATE DESC
)
WHERE ROWNUM <= 5;


UPDATE QUESTION
SET QUESTION_ANSWER = '이것은 테스트 답변입니다.'
WHERE QUESTION_NO = 13;

UPDATE QUESTION
SET QUESTION_ANSWER = '배송 관련 안내입니다.'
WHERE QUESTION_NO = 12;

UPDATE QUESTION
SET QUESTION_ANSWER = '테스트 답변 1입니다.'
WHERE QUESTION_NO = 14;

UPDATE QUESTION
SET QUESTION_ANSWER = '테스트 답변 2입니다.'
WHERE QUESTION_NO = 15;

UPDATE QUESTION
SET QUESTION_ANSWER = '테스트 답변 3입니다.'
WHERE QUESTION_NO = 16;


-- 데이터 삽입
INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '코 안내', '코로 듣지요.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '서비스 점검 안내', '서비스 점검으로 인해 일시적인 접속 불가가 발생할 예정입니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '신규 기능 업데이트', '신규 기능 추가로 더욱 편리한 서비스를 이용하실 수 있습니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '이용약관 변경 안내', '이용약관이 2024년 11월 20일부로 변경됩니다. 상세 내용은 공지사항을 참조하세요.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '추석 연휴 휴무 안내', '다가오는 추석 연휴로 인해 고객센터가 휴무일을 가집니다.', SYSDATE, 'Y');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '시스템 업데이트', '2024년 12월 1일에 시스템 업데이트가 예정되어 있습니다. 불편을 드려 죄송합니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '긴급 보안 업데이트', '보안 강화를 위해 긴급 업데이트가 진행될 예정입니다. 자세한 사항은 공지사항을 참조하세요.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '서비스 중단 안내', '서버 점검으로 인해 서비스가 2024년 11월 25일에 일시적으로 중단될 예정입니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '고객 이벤트 안내', '11월 특별 고객 감사 이벤트가 진행됩니다. 자세한 내용은 홈페이지를 확인하세요.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '회원 정책 변경', '회원 등급 정책이 2024년 12월 1일부로 개정됩니다. 변경 사항을 확인하세요.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '비밀번호 변경 권장', '계정 보안을 위해 비밀번호를 정기적으로 변경해 주세요.', SYSDATE, 'N');


INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '크리스마스 휴무 안내', '크리스마스 휴일을 맞아 12월 25일에는 고객센터가 휴무입니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '정기 서버 점검 일정', '안정적인 서비스 제공을 위해 매월 첫째 주 수요일에 정기 점검이 있습니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '고객 지원 시스템 업그레이드', '고객 지원 시스템 업그레이드로 더 나은 서비스를 제공합니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '개인정보 처리방침 개정 안내', '2024년 12월 5일부터 새로운 개인정보 처리방침이 시행됩니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '설날 연휴 고객센터 운영', '설날 연휴 기간 동안 고객센터 운영 시간이 단축됩니다.', SYSDATE, 'Y');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '시스템 성능 개선 작업', '더 빠른 서비스 제공을 위한 시스템 성능 개선 작업이 진행됩니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '새로운 서비스 출시 예고', '2024년 초에 새로운 서비스가 추가될 예정입니다. 많은 관심 부탁드립니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '긴급 점검 안내', '긴급 점검으로 인해 일부 서비스가 일시적으로 중단될 수 있습니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '신년 맞이 이벤트', '신년 맞이 이벤트가 1월 한 달간 진행됩니다. 많은 참여 부탁드립니다.', SYSDATE, 'N');

INSERT INTO NOTICE (NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_DATE, NOTICE_DEL_FL) VALUES
(SEQ_NOTICE_NO.NEXTVAL, '데이터 백업 일정 안내', '정기 데이터 백업이 2024년 12월 10일에 실시됩니다.', SYSDATE, 'N');


SELECT
			COUNT(*)
		FROM
			"NOTICE";
		
SELECT
	*
FROM
	"NOTICE"
WHERE
	NOTICE_DEL_FL = 'N';

SELECT
*
FROM
AUCTION;

SELECT
*
FROM
PIECE_AUCTION
ORDER BY 1;

SELECT
*
FROM
PIECE
WHERE
PIECE_STATUS = 'A';



SELECT
*
FROM
ARTIST;

		 SELECT
	        P.PIECE_NO,
	        P.PIECE_TITLE,
	        P.PIECE_RENAME,
	        P.REG_DATE,
	        PA.START_DATE
	    FROM
	        "PIECE" P
	    JOIN
	        "PIECE_AUCTION" PA
	    ON
	        P.PIECE_NO = PA.PIECE_NO
	    WHERE
	        P.PIECE_STATUS = 'A'
	    ORDER BY
	        P.REG_DATE ASC 
	    FETCH FIRST 3 ROWS ONLY;
	   
	   	UPDATE PIECE
		SET PIECE_STATUS = 'S'
		WHERE PIECE_NO IN (
			SELECT PIECE_NO
			FROM PIECE_AUCTION
			WHERE START_DATE = TO_DATE(TO_CHAR(CURRENT_DATE, 'YYYYMMDD'), 'YYYYMMDD')
			);

		
 SELECT
        P.PIECE_NO,
        P.PIECE_TITLE,
        P.PIECE_TYPE,
        P.PIECE_RENAME,
        P.REG_DATE,
        PA.START_DATE
    FROM
        "PIECE" P
  JOIN
      "PIECE_AUCTION" PA
  ON
      P.PIECE_NO = PA.PIECE_NO
  WHERE
      P.PIECE_STATUS = 'A'
      AND
      P.PIECE_TYPE = 2
  ORDER BY
      P.REG_DATE ASC 
  FETCH FIRST 3 ROWS ONLY;
 
 
  SELECT
      P.PIECE_NO,
      P.PIECE_TITLE,
      P.PIECE_TYPE,
      P.PIECE_RENAME,
      P.REG_DATE,
      PA.START_DATE
  FROM
      "PIECE" P
  JOIN
      "PIECE_AUCTION" PA
  ON
      P.PIECE_NO = PA.PIECE_NO
  WHERE
      P.PIECE_STATUS = 'A'
      AND
      P.PIECE_TYPE = 2;
     
SELECT COUNT(*)
FROM "WISH"
WHERE
 PIECE_NO = 51
 AND
 MEMBER_NO = 8;


SELECT
*
FROM
WISH;
	       

SELECT COUNT(*)
   		FROM "WISH"
   		WHERE
   		 PIECE_NO = 51;
	   
   		SELECT
   		*
   		FROM
   		ARTIST ;

SELECT
    *
FROM
    "PIECE"
WHERE
    PIECE_STATUS = 'A'
ORDER BY
    REG_DATE ASC
FETCH FIRST 3 ROWS ONLY;

SELECT
	*
FROM
	"PIECE";
WHERE
	PIECE_NO = 50;


	    SELECT 
	        P.PIECE_NO, 
	        P.PIECE_TITLE, 
	        P.PIECE_RENAME, 
	        PA.START_DATE,
	        
	        (SELECT COUNT(*) 
	         FROM "WISH" 
	         WHERE PIECE_NO = P.PIECE_NO) AS LIKE_COUNT,
	        
	        (SELECT COUNT(*) 
	         FROM "WISH" 
	         WHERE PIECE_NO = 51
	         AND MEMBER_NO = 8) AS LIKE_CHECK
	
	    FROM 
	        "PIECE" P
	    JOIN 
	        "PIECE_AUCTION" PA 
	    ON 
	        P.PIECE_NO = PA.PIECE_NO
	    WHERE 
	        P.PIECE_NO = 51;
	       
SELECT
    P.PIECE_NO,
    P.PIECE_TITLE,
    P.PIECE_RENAME,
    PA.START_DATE,
    (SELECT COUNT(*) FROM "WISH" WHERE PIECE_NO = 51 AND MEMBER_NO = 8) AS LIKE_CHECK,
    A.ARTIST_NICKNAME
FROM
    "PIECE" P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
JOIN
    "ARTIST" A
ON
    P.MEMBER_NO = A.MEMBER_NO
WHERE
    P.PIECE_NO = 51;
   
   
       
SELECT     
*
FROM
PIECE
WHERE
PIECE_STATUS = 'S';

SELECT *
FROM PIECE
WHERE PIECE_TYPE = 2 AND PIECE_STATUS = 'S'
ORDER BY REG_DATE ASC;

       

SELECT     
*
FROM
AUCTION;

SELECT     
*
FROM
PIECE;

SELECT * 
FROM PIECE_AUCTION 
WHERE PIECE_NO = 52 
AND CURRENT_DATE BETWEEN START_DATE AND END_DATE;


SELECT
*
FROM
PIECE P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
WHERE
PIECE_TYPE = 2
AND
PIECE_STATUS = 'S'
ORDER BY TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC
FETCH FIRST 3 ROWS ONLY;

SELECT
*
FROM
PIECE P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
WHERE
PIECE_TYPE = 2
AND
PIECE_STATUS = 'S'
ORDER BY TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC
FETCH FIRST 3 ROWS ONLY;
   
SELECT
*
FROM
PIECE P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
WHERE
PIECE_TYPE = 2
AND
PIECE_STATUS = 'S'
ORDER BY TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC
FETCH FIRST 3 ROWS ONLY;

	SELECT
			*
		FROM
			PIECE P
		JOIN
		    "PIECE_AUCTION" PA
		ON
		    P.PIECE_NO = PA.PIECE_NO
		WHERE
			PIECE_TYPE = 2
			AND
			PIECE_STATUS = 'S'
		ORDER BY TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC
		FETCH FIRST 3 ROWS ONLY;
       
SELECT
*
FROM
REPORT;


SELECT
*
FROM
REPORT;




SELECT
    P.PIECE_NO, 
    P.PIECE_TITLE, 
    P.PIECE_DETAIL,
    P.SIZE_X,
    P.SIZE_Y,
    P.PIECE_CATEGORY_NO,
    P.PIECE_RENAME,
    PA.START_DATE,
    PA.START_PRICE,
    PA.HOPE_PRICE,
    PA.END_DATE,
    PC.PIECE_CATEGORY_NAME, -- 카테고리명
    A.ARTIST_NICKNAME       -- 아티스트 닉네임 추가
FROM
    "PIECE" P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
JOIN
    "PIECE_CATEGORY" PC
ON
    P.PIECE_CATEGORY_NO = PC.PIECE_CATEGORY_NO
JOIN
    "ARTIST" A
ON
    P.MEMBER_NO = A.MEMBER_NO -- 아티스트와 조인 조건
WHERE
    P.PIECE_NO = 51;
   
   
      SELECT MAX(END_PRICE)
      FROM AUCTION
      WHERE PIECE_NO = 13;
     
     SELECT
     *
     FROM
      PIECE
     WHERE	
     	PIECE_NO = 13;
     
		SELECT MAX(END_PRICE)
		FROM AUCTION
		WHERE PIECE_NO = 12;
	
		SELECT
		FROM
		
 
     SELECT
     *
     FROM AUCTION
      WHERE PIECE_NO = 13;
     
     SELECT
     *
     FROM
     PIECE
     WHERE
     	PIECE_STATUS = 'F';
    
    SELECT
    *
    FROM
    PIECE_AUCTION;
   
    
   
  /* 79 76 77 47 49 50 */
   
  	SELECT
			*
		FROM
			PIECE P
		JOIN
		    "PIECE_AUCTION" PA
		ON
		    P.PIECE_NO = PA.PIECE_NO
		WHERE
			PIECE_TYPE = 2
			AND
			PIECE_STATUS = 'S'
		ORDER BY TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC;
		FETCH FIRST 3 ROWS ONLY;
	
	
	SELECT
    *
FROM
    PIECE P
JOIN
    "PIECE_AUCTION" PA
ON
    P.PIECE_NO = PA.PIECE_NO
WHERE
    PIECE_TYPE = 2
    AND PIECE_STATUS = 'S'
    AND PA.START_DATE >= SYSDATE -- START_DATE가 오늘 이후
ORDER BY
    TO_DATE(P.REG_DATE, 'YYYY-MM-DD HH24:MI:SS') ASC
FETCH FIRST 3 ROWS ONLY;


SELECT
    *
FROM
    PIECE P
LEFT JOIN
    ARTIST A
ON
    P.MEMBER_NO = A.MEMBER_NO
WHERE
		PIECE_STATUS = 'F';
	
	
	SELECT
		    P.PIECE_NO, 
		    P.PIECE_TITLE, 
		    P.PIECE_DETAIL,
		    P.SIZE_X,
		    P.SIZE_Y,
		    P.PIECE_CATEGORY_NO,
		    P.PIECE_RENAME,
		    PA.START_DATE,
		    PA.START_PRICE,
		    PA.HOPE_PRICE,
		    PA.END_DATE,
		    PC.PIECE_CATEGORY_NAME, -- 카테고리명
		    A.ARTIST_NICKNAME       -- 아티스트 닉네임 추가
		FROM
		    "PIECE" P
		JOIN
		    "PIECE_AUCTION" PA
		ON
		    P.PIECE_NO = PA.PIECE_NO
		JOIN
		    "PIECE_CATEGORY" PC
		ON
		    P.PIECE_CATEGORY_NO = PC.PIECE_CATEGORY_NO
		JOIN
		    "ARTIST" A
		ON
		    P.MEMBER_NO = A.MEMBER_NO -- 아티스트와 조인 조건
		WHERE
			P.PIECE_NO = 4;
	
	
	
	SELECT
    *
FROM
    PIECE;
WHERE
	PIECE_STATUS = 'F';


SELECT
*
FROM
ARTIST;
	
     
     SELECT
	        P.PIECE_NO,
	        P.PIECE_TITLE,
	        P.PIECE_RENAME,
	        P.REG_DATE,
	        PA.START_DATE
	    FROM
	        "PIECE" P
	    JOIN
	        "PIECE_AUCTION" PA
	    ON
	        P.PIECE_NO = PA.PIECE_NO
	    WHERE
	        P.PIECE_STATUS = 'A'
	        AND
	        P.PIECE_TYPE = 2
	    ORDER BY
	        P.REG_DATE ASC 
	    FETCH FIRST 3 ROWS ONLY;
	   
	      SELECT
	    	*
		FROM
		    PIECE P
		LEFT JOIN
		    ARTIST A
		ON
		    P.MEMBER_NO = A.MEMBER_NO
		WHERE
			PIECE_STATUS = 'F'
			AND
			PIECE_TYPE = '2';

SELECT 
*
FROM
MEMBER;



SELECT 
*
FROM
ARTIST;

       

COMMIT;

ROLLBACK;

