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
FROM
"MEMBER";
	

	   
SELECT
*
FROM
	PIECE
WHERE
	 PIECE_TYPE = 2;
	   

	
	SELECT
				P.PIECE_NO,
		    P.PIECE_TITLE,
		    P.PIECE_RENAME,
		    P.REG_DATE,
		    PA.START_DATE,
		    PA.END_DATE
		FROM
		    PIECE_AUCTION PA
		JOIN
		    PIECE P
		ON
		    PA.PIECE_NO = P.PIECE_NO
		WHERE
		    P.PIECE_STATUS = 'S'
		    AND P.PIECE_TYPE = 2
		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');
		   
   	SELECT PIECE_NO
		FROM PIECE_AUCTION
		WHERE TRUNC(START_DATE) = TRUNC(CURRENT_DATE - 1);
	
SELECT
*
FROM
PIECE_AUCTION;


	SELECT
			P.PIECE_NO,
		    P.PIECE_TITLE,
		    P.PIECE_RENAME,
		    P.REG_DATE,
		    PA.START_DATE,
		    PA.END_DATE
		FROM
		    PIECE_AUCTION PA
		JOIN
		    PIECE P
		ON
		    PA.PIECE_NO = P.PIECE_NO
		WHERE
		    P.PIECE_STATUS = 'A'
		    AND P.PIECE_TYPE = 2
		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE + 5 , 'YYYYMMDD'), 'YYYYMMDD');
   
   
   
   
   	SELECT
				P.PIECE_NO,
		    P.PIECE_TITLE,
		    P.PIECE_RENAME,
		    P.REG_DATE,
		    PA.START_DATE,
		    PA.END_DATE
		FROM
		    PIECE_AUCTION PA
		JOIN
		    PIECE P
		ON
		    PA.PIECE_NO = P.PIECE_NO
		WHERE
		    P.PIECE_STATUS = 'S'
		    AND P.PIECE_TYPE = 2
		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');

   
   
		SELECT
				P.PIECE_NO,
		    P.PIECE_TITLE,
		    P.PIECE_RENAME,
		    P.REG_DATE,
		    PA.START_DATE,
		    PA.END_DATE
		FROM
		    PIECE_AUCTION PA
		JOIN
		    PIECE P
		ON
		    PA.PIECE_NO = P.PIECE_NO
		WHERE
	    P.PIECE_STATUS = 'A'
	    AND P.PIECE_TYPE = 2
	    AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE + 1, 'YYYYMMDD'), 'YYYYMMDD')
	    AND PA.START_DATE + (10/24) > SYSDATE;
	   
	   
	   SELECT MEMBER_NO
		FROM WISH
		WHERE PIECE_NO = 144;

		   
		    SELECT
    			P.PIECE_NO,
    		    P.PIECE_TITLE,
    		    P.PIECE_RENAME,
    		    P.REG_DATE,
    		    PA.START_DATE,
    		    PA.END_DATE
    		FROM
    		    PIECE_AUCTION PA
    		JOIN
    		    PIECE P
    		ON
    		    PA.PIECE_NO = P.PIECE_NO
    		WHERE
    		    P.PIECE_STATUS = 'S'
    		    AND P.PIECE_TYPE = 2
    		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');
    		   
    		   
		     SELECT
            P.PIECE_NO,
            P.PIECE_TITLE,
            P.PIECE_RENAME,
            P.REG_DATE,
            PA.START_DATE,
            PA.END_DATE
        FROM
            PIECE_AUCTION PA
        JOIN
            PIECE P
        ON
            PA.PIECE_NO = P.PIECE_NO
        WHERE
            P.PIECE_STATUS = 'A'
            AND P.PIECE_TYPE = 2
            AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE + 1 - 10/24, 'YYYYMMDD'), 'YYYYMMDD');
    		   
    		   
   SELECT PIECE_NO
		FROM PIECE_AUCTION
		WHERE TRUNC(START_DATE) = TRUNC(CURRENT_DATE + 1);
	
		SELECT MEMBER_NO
		FROM WISH
		WHERE PIECE_NO = 144;
	
SELECT
    P.PIECE_NO,
    P.PIECE_TITLE,
    P.PIECE_RENAME,
    P.REG_DATE,
    PA.START_DATE,
    PA.END_DATE
FROM
    PIECE_AUCTION PA
JOIN
    PIECE P
ON
    PA.PIECE_NO = P.PIECE_NO
WHERE
    P.PIECE_STA`TUS = 'A'
    AND P.PIECE_TYPE = 2;
   
   
   SELECT
    P.PIECE_NO,
    P.PIECE_TITLE,
    P.PIECE_RENAME,
    P.REG_DATE,
    PA.START_DATE,
    PA.END_DATE
FROM
    PIECE_AUCTION PA
JOIN
    PIECE P
ON
    PA.PIECE_NO = P.PIECE_NO
WHERE
    P.PIECE_STATUS = 'A'
    AND P.PIECE_TYPE = 2
    AND TRUNC(PA.START_DATE) = TRUNC(SYSDATE) 
    AND PA.START_DATE + INTERVAL '10' HOUR > SYSDATE; 
   
   
    SELECT
            P.PIECE_NO,
            P.PIECE_TITLE,
            P.PIECE_RENAME,
            P.REG_DATE,
            PA.START_DATE,
            PA.END_DATE
        FROM
            PIECE_AUCTION PA
        JOIN
            PIECE P
        ON
            PA.PIECE_NO = P.PIECE_NO
        WHERE
            P.PIECE_STATUS = 'A'
            AND P.PIECE_TYPE = 2
            AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE + 3 - 10/24, 'YYYYMMDD'), 'YYYYMMDD');
           
           
           SELECT
    			P.PIECE_NO,
    		    P.PIECE_TITLE,
    		    P.PIECE_RENAME,
    		    P.REG_DATE,
    		    PA.START_DATE,
    		    PA.END_DATE
    		FROM
    		    PIECE_AUCTION PA
    		JOIN
    		    PIECE P
    		ON
    		    PA.PIECE_NO = P.PIECE_NO
    		WHERE
    		    P.PIECE_STATUS = 'S'
    		    AND P.PIECE_TYPE = 2
    		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE +4 - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');
    		   
    		   
    		   SELECT
    		   *
    		   FROM
    		   PIECE_AUCTION ;
    		  
    		  
    		   

   
   SELECT
    P.PIECE_NO,
    P.PIECE_TITLE,
    P.PIECE_RENAME,
    P.REG_DATE,
    PA.START_DATE,
    PA.END_DATE
FROM
    PIECE_AUCTION PA
JOIN
    PIECE P
ON
    PA.PIECE_NO = P.PIECE_NO
WHERE
    P.PIECE_STATUS = 'A'
    AND P.PIECE_TYPE = 2
    AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE + 1 - 10/24, 'YYYYMMDD'), 'YYYYMMDD');
   
   
   SELECT
            P.PIECE_NO,
            P.PIECE_TITLE,
            P.PIECE_RENAME,
            P.REG_DATE,
            PA.START_DATE,
            PA.END_DATE
        FROM
            PIECE_AUCTION PA
        JOIN
            PIECE P
        ON
            PA.PIECE_NO = P.PIECE_NO
        WHERE
            P.PIECE_STATUS = 'A'
            AND P.PIECE_TYPE = 2
            AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24, 'YYYYMMDD'), 'YYYYMMDD');
           
           
           SELECT
           *
           FROM
           QUESTION;
           
           
         SELECT
    			P.PIECE_NO,
    		    P.PIECE_TITLE,
    		    P.PIECE_RENAME,
    		    P.REG_DATE,
    		    PA.START_DATE,
    		    PA.END_DATE
    		FROM
    		    PIECE_AUCTION PA
    		JOIN
    		    PIECE P
    		ON
    		    PA.PIECE_NO = P.PIECE_NO
    		WHERE
    		    P.PIECE_STATUS = 'S'
    		    AND P.PIECE_TYPE = 2
    		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');

	
    		   
    		   SELECT 
    		   *
		FROM PIECE_AUCTION
		WHERE TRUNC(START_DATE) = TRUNC(CURRENT_DATE + 0);
	
	
SELECT PIECE_NO
		FROM PIECE_AUCTION
		WHERE TRUNC(START_DATE) = TRUNC(CURRENT_DATE + 1);
	
	
	    SELECT
            P.PIECE_NO,
            P.PIECE_TITLE,
            P.PIECE_RENAME,
            P.REG_DATE,
            PA.START_DATE,
            PA.END_DATE
        FROM
            PIECE_AUCTION PA
        JOIN
            PIECE P
        ON
            PA.PIECE_NO = P.PIECE_NO
        WHERE
            P.PIECE_STATUS = 'A'
            AND P.PIECE_TYPE = 2
            AND PA.START_DATE >= TO_DATE(TO_CHAR(SYSDATE + 1 - 10/24, 'YYYYMMDD'), 'YYYYMMDD');
           
           
 SELECT *
FROM (
    SELECT
        P.PIECE_NO,
        P.PIECE_TITLE,
        P.PIECE_RENAME,
        P.REG_DATE,
        PA.START_DATE,
        PA.END_DATE
    FROM
        PIECE_AUCTION PA
    JOIN
        PIECE P
    ON
        PA.PIECE_NO = P.PIECE_NO
    WHERE
        P.PIECE_STATUS = 'A'
        AND P.PIECE_TYPE = 2
        AND PA.START_DATE >= TO_DATE(TO_CHAR(SYSDATE + 1 - 10/24, 'YYYYMMDD'), 'YYYYMMDD') 
    ORDER BY
        PA.START_DATE ASC 
)
WHERE ROWNUM <= 3;

           
           
           SELECT
           *
           FROM
           "PIECE" B
           JOIN
           	"PIECE_AUCTION" A
           ON B.PIECE_NO = A.PIECE_NO
           WHERE
          B.PIECE_TYPE = 2
           AND
           B.PIECE_STATUS = 'A';
          
          
          SELECT
           *
           FROM
           "PIECE"
           WHERE
          PIECE_TYPE = 2
           AND
          PIECE_STATUS = 'S';
          
	
    		   
    		   
		     SELECT
    				P.PIECE_NO,
    		    P.PIECE_TITLE,
    		    P.PIECE_RENAME,
    		    P.REG_DATE,
    		    PA.START_DATE,
    		    PA.END_DATE
    		FROM
    		    PIECE_AUCTION PA
    		JOIN
    		    PIECE P
    		ON
    		    PA.PIECE_NO = P.PIECE_NO
    		WHERE
    		    P.PIECE_STATUS = 'S'
    		    AND P.PIECE_TYPE = 2
    		   	AND PA.START_DATE = TO_DATE(TO_CHAR(CURRENT_TIMESTAMP - 10/24 , 'YYYYMMDD'), 'YYYYMMDD');
    		   
    		   
    		   
    		  

    		   

         
	DELETE
	FROM
	PIECE
	WHERE
	PIECE_NO = 81;

SELECT
*
FROM
MEMBER;

COMMIT;
ROLLBACK;

SELECT
*
FROM
PIECE
ORDER BY
PIECE_NO DESC;

SELECT
*
FROM
PIECE_SELL
ORDER BY
PIECE_NO DESC;


UPDATE PIECE
SET PIECE_RENAME = REPLACE(PIECE_RENAME, '.jpg', '.png')
WHERE PIECE_RENAME LIKE '%.jpg%'
AND PIECE_NO > 287;


ALTER SEQUENCE SEQ_PIECE_NO RESTART START WITH 318;

/* 경매 등록 */
INSERT INTO PIECE VALUES(SEQ_PIECE_NO.NEXTVAL, 13, 'https://firebasestorage.googleapis.com/v0/b/odagirijoe-3e3a4.firebasestorage.app/o/piece%2Fpiece' || SEQ_PIECE_NO.CURRVAL || '.jpg?alt=media', '무제', '설명없음', 25, 20, TO_DATE('20250131', 'YYYYMMDD'), 2, 'A', 1);
INSERT INTO PIECE_AUCTION (PIECE_NO, START_DATE, END_DATE, START_PRICE, HOPE_PRICE) 
VALUES (SEQ_PIECE_NO.CURRVAL, TO_DATE('2025-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
        TO_DATE('2025-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1000000, 5000000);
     
       
/* 2월부터 말일까지 3개씩 생성 */
BEGIN
    FOR day IN 1..28 LOOP  -- 날짜를 1일부터 28일까지 반복
        FOR item IN 1..3 LOOP  -- 각 날짜에 3개의 데이터 생성
            -- Insert into PIECE
            INSERT INTO PIECE 
            VALUES (SEQ_PIECE_NO.NEXTVAL, 13, 
                    'https://firebasestorage.googleapis.com/v0/b/odagirijoe-3e3a4.firebasestorage.app/o/piece%2Fpiece' || SEQ_PIECE_NO.CURRVAL || '.jpg?alt=media', 
                    '무제', '설명없음', 25, 20, TO_DATE('20250131', 'YYYYMMDD'), 2, 'A', 1);
            
            -- 종료 날짜 처리: 2월 28일을 초과하지 않도록 설정
            INSERT INTO PIECE_AUCTION (PIECE_NO, START_DATE, END_DATE, START_PRICE, HOPE_PRICE)
            VALUES (
                SEQ_PIECE_NO.CURRVAL, 
                TO_DATE('2025-02-' || LPAD(day, 2, '0') || ' 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
                CASE 
                    WHEN day = 28 THEN TO_DATE('2025-02-28 23:59:59', 'YYYY-MM-DD HH24:MI:SS')  -- 2월 28일의 경우, 종료 날짜를 28일로 설정
                    ELSE TO_DATE('2025-02-' || LPAD(day + 1, 2, '0') || ' 00:00:00', 'YYYY-MM-DD HH24:MI:SS')  -- 그 외는 다음 날
                END, 
                1000000, 5000000);
        END LOOP;
    END LOOP;
END;

/* 3월부터 말일까지 */
BEGIN
    FOR day IN 3..31 LOOP  -- 3월 3일부터 31일까지 반복
        FOR item IN 1..3 LOOP  -- 각 날짜에 3개의 데이터 생성
            -- Insert into PIECE
            INSERT INTO PIECE 
            VALUES (SEQ_PIECE_NO.NEXTVAL, 13, 
                    'https://firebasestorage.googleapis.com/v0/b/odagirijoe-3e3a4.firebasestorage.app/o/piece%2Fpiece' || SEQ_PIECE_NO.CURRVAL || '.jpg?alt=media', 
                    '무제', '설명없음', 25, 20, TO_DATE('20250303', 'YYYYMMDD'), 2, 'A', 1);
            
            -- 종료 날짜 처리: 3월 31일을 초과하지 않도록 설정
            INSERT INTO PIECE_AUCTION (PIECE_NO, START_DATE, END_DATE, START_PRICE, HOPE_PRICE)
            VALUES (
                SEQ_PIECE_NO.CURRVAL, 
                TO_DATE('2025-03-' || LPAD(day, 2, '0') || ' 00:00:00', 'YYYY-MM-DD HH24:MI:SS'),
                CASE 
                    WHEN day = 31 THEN TO_DATE('2025-03-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')  -- 3월 31일의 경우, 종료 날짜를 31일로 설정
                    ELSE TO_DATE('2025-03-' || LPAD(day + 1, 2, '0') || ' 00:00:00', 'YYYY-MM-DD HH24:MI:SS')  -- 그 외는 다음 날
                END, 
                1000000, 5000000);
        END LOOP;
    END LOOP;
END;


ROLLBACK;

SELECT
*
FROM
PIECE_AUCTION
WHERE
PIECE_NO =8;




ALTER SEQUENCE SEQ_AUCTION_NO RESTART START WITH 318;


COMMIT;


SELECT
    				P.PIECE_NO,
    		    P.PIECE_TITLE,
    		    P.PIECE_RENAME,
    		    P.REG_DATE,
    		    PA.START_DATE,
    		    PA.END_DATE
    		FROM
    		    PIECE_AUCTION PA
    		JOIN
    		    PIECE P
    		ON
    		    PA.PIECE_NO = P.PIECE_NO
    		WHERE
    		    P.PIECE_STATUS = 'A'
    		    AND P.PIECE_TYPE = 2
    		   	AND PA.START_DATE = TO_DATE(TO_CHAR(SYSDATE - 10/24 + 1, 'YYYYMMDD'), 'YYYYMMDD');




SELECT
*
FROM
PIECE
WHERE
PIECE_STATUS = 'A'
AND
PIECE_TYPE = 2;
	
UPDATE
PIECE
SET
PIECE_TYPE = 1
WHERE
PIECE_NO > 264;



/* 예정경매 샘플 이미지 등록 */
INSERT INTO PIECE VALUES(SEQ_PIECE_NO.NEXTVAL, 13, 'https://firebasestorage.googleapis.com/v0/b/odagirijoe-3e3a4.firebasestorage.app/o/piece%2Fpiece' || SEQ_PIECE_NO.CURRVAL || '.jpg?alt=media', '무제', '설명없음', 25, 20, TO_DATE('20241207', 'YYYYMMDD'), 2, 'A', 1);
INSERT INTO PIECE VALUES(SEQ_PIECE_NO.CURRVAL, 150000);

COMMIT;

ROLLBACK;

