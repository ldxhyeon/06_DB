CREATE TABLE "REPORT_PROGRESS" (
	"STATUS_CODE"	NUMBER		NOT NULL,
	"STATUS_CONTENT"	VARCHAR2(50)		NOT NULL
);

COMMENT ON COLUMN "REPORT_PROGRESS"."STATUS_CODE" IS '상태코드';

COMMENT ON COLUMN "REPORT_PROGRESS"."STATUS_CONTENT" IS '상태경과 상세';

CREATE TABLE "REPORT_BOARD" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"REPORT_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"REPORT_WRTIE_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"PROGRESS_CODE"	NUMBER	DEFAULT 1	NOT NULL,
	"REPORT_CATEGORY"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REPORT_BOARD"."MEMBER_NO" IS '신고한 회원 번호';

COMMENT ON COLUMN "REPORT_BOARD"."BOARD_NO" IS '게시글 번호';

COMMENT ON COLUMN "REPORT_BOARD"."REPORT_CONTENT" IS '신고 게시글 내용';

COMMENT ON COLUMN "REPORT_BOARD"."REPORT_WRTIE_DATE" IS '신고 일자';

COMMENT ON COLUMN "REPORT_BOARD"."PROGRESS_CODE" IS '신고 상태 경과 코드';

COMMENT ON COLUMN "REPORT_BOARD"."REPORT_CATEGORY" IS '신고 사유 카테고리 선택형';


CREATE TABLE "BOARD_IMG" (
	"IMG_NO"	NUMBER		NOT NULL,
	"IMG_PATH"	VARCHAR2(200)		NOT NULL,
	"IMG_RENAME"	NVARCHAR2(50)		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "BOARD_IMG"."IMG_NO" IS '이미지 번호(SEQ_IMG_NO)';

COMMENT ON COLUMN "BOARD_IMG"."IMG_PATH" IS '이미지 요청 경로';

COMMENT ON COLUMN "BOARD_IMG"."IMG_RENAME" IS '이미지 변경명';

COMMENT ON COLUMN "BOARD_IMG"."BOARD_NO" IS '이미지가 첨부된 게시글 번호';

CREATE TABLE "REPORT_COMMENT" (
	"REPORT_NO"	NUMBER		NOT NULL,
	"REPORT_COMMENT_NO"	NUMBER		NOT NULL,
	"COMMENT_CONTENT"	NVARCHAR2(1000)		NOT NULL,
	"REPORT_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"PROGRESS_CODE"	NUMBER	DEFAULT 1	NOT NULL
);

COMMENT ON COLUMN "REPORT_COMMENT"."REPORT_NO" IS '신고한 회원 번호';

COMMENT ON COLUMN "REPORT_COMMENT"."REPORT_COMMENT_NO" IS '신고 댓글 번호';

COMMENT ON COLUMN "REPORT_COMMENT"."COMMENT_CONTENT" IS '댓글 내용';

COMMENT ON COLUMN "REPORT_COMMENT"."REPORT_DATE" IS '신고일자';

COMMENT ON COLUMN "REPORT_COMMENT"."PROGRESS_CODE" IS '신고 상태 경과 코드';

CREATE TABLE "BOARD_LIKE" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "BOARD_LIKE"."BOARD_NO" IS '게시글 번호(SEQ_BOARD_NO)';

COMMENT ON COLUMN "BOARD_LIKE"."MEMBER_NO" IS '회원번호(SEQ_MEMBER_NO)';

CREATE TABLE "COMMENT" (
	"COMMENT_NO"	NUMBER		NOT NULL,
	"COMMENT_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"COMMENT_WRITE_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"COMMENT_DEL_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"PARENT_COMMENT_NO"	NUMBER		NULL
);

COMMENT ON COLUMN "COMMENT"."COMMENT_NO" IS '댓글 번호(SEQ_COMMENT_NO)';

COMMENT ON COLUMN "COMMENT"."COMMENT_CONTENT" IS '댓글 내용';

COMMENT ON COLUMN "COMMENT"."COMMENT_WRITE_DATE" IS '댓글 작성일';

COMMENT ON COLUMN "COMMENT"."COMMENT_DEL_FL" IS '댓글 삭제 여부(N,Y)';

COMMENT ON COLUMN "COMMENT"."BOARD_NO" IS '게시글 번호(SEQ_BOARD_NO)';

COMMENT ON COLUMN "COMMENT"."MEMBER_NO" IS '회원번호(SEQ_MEMBER_NO)';

COMMENT ON COLUMN "COMMENT"."PARENT_COMMENT_NO" IS '부모 댓글 번호(SEQ_COMMENT_NO)';

CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_EMAIL"	VARCHAR2(41)		NOT NULL,
	"MEMBER_PW"	VARCHAR2(150)		NOT NULL,
	"MEMBER_NICKNAME"	VARCHAR2(30)		NOT NULL,
	"MEMBER_ADDRESS"	NVARCHAR2(150)		NOT NULL,
	"PROFILE_IMG"	VARCHAR2(300)		NULL,
	"ENROLL_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"MEMBER_DEL_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원번호(SEQ_MEMBER_NO)';

COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '회원 이메일(ID 겸용)';

COMMENT ON COLUMN "MEMBER"."MEMBER_PW" IS '회원 비밀번호(암호화)';

COMMENT ON COLUMN "MEMBER"."MEMBER_NICKNAME" IS '회원명(별명)';

COMMENT ON COLUMN "MEMBER"."MEMBER_ADDRESS" IS '회원 주소';

COMMENT ON COLUMN "MEMBER"."PROFILE_IMG" IS '프로필 이미지 경로';

COMMENT ON COLUMN "MEMBER"."ENROLL_DATE" IS '가입일';

COMMENT ON COLUMN "MEMBER"."MEMBER_DEL_FL" IS '탈퇴여부(N,Y)';

CREATE TABLE "BOARD" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"BOARD_TITLE"	NVARCHAR2(100)		NOT NULL,
	"BOARD_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"BOARD_WRTIE_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"BOARD_UPDATE_DATE"	DATE		NULL,
	"READ_COUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"BOARD_DEL_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"BOARD_CODE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "BOARD"."BOARD_NO" IS '게시글 번호(SEQ_BOARD_NO)';

COMMENT ON COLUMN "BOARD"."BOARD_TITLE" IS '게시글 제목';

COMMENT ON COLUMN "BOARD"."BOARD_CONTENT" IS '게시글 내용';

COMMENT ON COLUMN "BOARD"."BOARD_WRTIE_DATE" IS '게시글 작성일';

COMMENT ON COLUMN "BOARD"."BOARD_UPDATE_DATE" IS '마지막 수정일';

COMMENT ON COLUMN "BOARD"."READ_COUNT" IS '게시글 조회수';

COMMENT ON COLUMN "BOARD"."BOARD_DEL_FL" IS '삭제여부(N,Y)';

COMMENT ON COLUMN "BOARD"."MEMBER_NO" IS '작성자 회원 번호';

COMMENT ON COLUMN "BOARD"."BOARD_CODE" IS '게시판 종류 코드 번호';

CREATE TABLE "BOARD_TYPE" (
	"BOARD_CODE"	NUMBER		NOT NULL,
	"BOARD_NAME"	NVARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "BOARD_TYPE"."BOARD_CODE" IS '게시판 종류 코드 번호';

COMMENT ON COLUMN "BOARD_TYPE"."BOARD_NAME" IS '게시판 이름';

CREATE TABLE "USED_BOARD" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"PRICE"	VARCHAR(255)		NOT NULL
);

COMMENT ON COLUMN "USED_BOARD"."BOARD_NO" IS '게시글 번호(SEQ_BOARD_NO)';

COMMENT ON COLUMN "USED_BOARD"."PRICE" IS '중고거래 금액';

CREATE TABLE "NOTIFICATION" (
	"NOTIFICATION_NO"	NUMBER		NOT NULL,
	"NOTIFICATION_CONTENT"	VARCHAR2(1000)		NOT NULL,
	"NOTIFICATION_CHECK"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"NOTIFICATION_DATE"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"NOTIFICATION_URL"	VARCHAR2(1000)		NOT NULL,
	"SEND_MEMBER_NO"	NUMBER		NOT NULL,
	"RECEIVE_MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "NOTIFICATION"."NOTIFICATION_NO" IS '알림 번호(SEQ_NOTIFICATION_NO)';

COMMENT ON COLUMN "NOTIFICATION"."NOTIFICATION_CONTENT" IS '알림 내용(HTML 포함)';

COMMENT ON COLUMN "NOTIFICATION"."NOTIFICATION_CHECK" IS '읽음 여부(Y,N)';

COMMENT ON COLUMN "NOTIFICATION"."NOTIFICATION_DATE" IS '알림 생성 시간';

COMMENT ON COLUMN "NOTIFICATION"."NOTIFICATION_URL" IS '연결 페이지 주소';

COMMENT ON COLUMN "NOTIFICATION"."SEND_MEMBER_NO" IS '알림 보낸 회원 번호';

COMMENT ON COLUMN "NOTIFICATION"."RECEIVE_MEMBER_NO" IS '알림 받는 회원 번호';

CREATE TABLE "CHATTING_MESSAGE" (
	"MESSAGE_NO"	NUMBER		NOT NULL,
	"MESSAGE_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"MESSAGE_TIME"	DATE	DEFAULT CURRENT_DATE	NOT NULL,
	"READ_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"CHAT_ROOM_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CHATTING_MESSAGE"."MESSAGE_NO" IS '메시지 번호(SEQ_MESSAGE_NO)';

COMMENT ON COLUMN "CHATTING_MESSAGE"."MESSAGE_CONTENT" IS '메시지 내용';

COMMENT ON COLUMN "CHATTING_MESSAGE"."MESSAGE_TIME" IS '메시지 시간';

COMMENT ON COLUMN "CHATTING_MESSAGE"."READ_FL" IS '메시지 읽음 여부(Y/N)';

COMMENT ON COLUMN "CHATTING_MESSAGE"."CHAT_ROOM_NO" IS '채팅방 번호';

CREATE TABLE "CHATTING_ROOM" (
	"CHATROOM_NO"	NUMBER		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CHATTING_ROOM"."CHATROOM_NO" IS '채팅방 번호(SEQ_CHATROOM_NO)';

COMMENT ON COLUMN "CHATTING_ROOM"."BOARD_NO" IS '게시글 번호';

COMMENT ON COLUMN "CHATTING_ROOM"."MEMBER_NO" IS '참여자 회원 번호';

ALTER TABLE "REPORT_PROGRESS" ADD CONSTRAINT "PK_REPORT_PROGRESS" PRIMARY KEY (
	"STATUS_CODE"
);

ALTER TABLE "REPORT_BOARD" ADD CONSTRAINT "PK_REPORT_BOARD" PRIMARY KEY (
	"MEMBER_NO",
	"BOARD_NO"
);

ALTER TABLE "BOARD_IMG" ADD CONSTRAINT "PK_BOARD_IMG" PRIMARY KEY (
	"IMG_NO"
);

ALTER TABLE "REPORT_COMMENT" ADD CONSTRAINT "PK_REPORT_COMMENT" PRIMARY KEY (
	"REPORT_NO",
	"REPORT_COMMENT_NO"
);

ALTER TABLE "BOARD_LIKE" ADD CONSTRAINT "PK_BOARD_LIKE" PRIMARY KEY (
	"BOARD_NO",
	"MEMBER_NO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY (
	"COMMENT_NO"
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "BOARD_TYPE" ADD CONSTRAINT "PK_BOARD_TYPE" PRIMARY KEY (
	"BOARD_CODE"
);

ALTER TABLE "USED_BOARD" ADD CONSTRAINT "PK_USED_BOARD" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "NOTIFICATION" ADD CONSTRAINT "PK_NOTIFICATION" PRIMARY KEY (
	"NOTIFICATION_NO"
);

ALTER TABLE "CHATTING_MESSAGE" ADD CONSTRAINT "PK_CHATTING_MESSAGE" PRIMARY KEY (
	"MESSAGE_NO"
);

ALTER TABLE "CHATTING_ROOM" ADD CONSTRAINT "PK_CHATTING_ROOM" PRIMARY KEY (
	"CHATROOM_NO"
);

ALTER TABLE "REPORT_BOARD" ADD CONSTRAINT "FK_MEMBER_TO_REPORT_BOARD_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "REPORT_BOARD" ADD CONSTRAINT "FK_BOARD_TO_REPORT_BOARD_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "REPORT_BOARD" ADD CONSTRAINT "FK_REPORT_PROGRESS_TO_REPORT_BOARD_1" FOREIGN KEY (
	"PROGRESS_CODE"
)
REFERENCES "REPORT_PROGRESS" (
	"STATUS_CODE"
);

ALTER TABLE "BOARD_IMG" ADD CONSTRAINT "FK_BOARD_TO_BOARD_IMG_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "REPORT_COMMENT" ADD CONSTRAINT "FK_MEMBER_TO_REPORT_COMMENT_1" FOREIGN KEY (
	"REPORT_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "REPORT_COMMENT" ADD CONSTRAINT "FK_COMMENT_TO_REPORT_COMMENT_1" FOREIGN KEY (
	"REPORT_COMMENT_NO"
)
REFERENCES "COMMENT" (
	"COMMENT_NO"
);

ALTER TABLE "REPORT_COMMENT" ADD CONSTRAINT "FK_REPORT_PROGRESS_TO_REPORT_COMMENT_1" FOREIGN KEY (
	"PROGRESS_CODE"
)
REFERENCES "REPORT_PROGRESS" (
	"STATUS_CODE"
);

ALTER TABLE "BOARD_LIKE" ADD CONSTRAINT "FK_BOARD_TO_BOARD_LIKE_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "BOARD_LIKE" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_LIKE_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_BOARD_TO_COMMENT_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_MEMBER_TO_COMMENT_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_COMMENT_TO_COMMENT_1" FOREIGN KEY (
	"PARENT_COMMENT_NO"
)
REFERENCES "COMMENT" (
	"COMMENT_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "FK_BOARD_TYPE_TO_BOARD_1" FOREIGN KEY (
	"BOARD_CODE"
)
REFERENCES "BOARD_TYPE" (
	"BOARD_CODE"
);

ALTER TABLE "USED_BOARD" ADD CONSTRAINT "FK_BOARD_TO_USED_BOARD_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "NOTIFICATION" ADD CONSTRAINT "FK_MEMBER_TO_NOTIFICATION_1" FOREIGN KEY (
	"SEND_MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "NOTIFICATION" ADD CONSTRAINT "FK_MEMBER_TO_NOTIFICATION_2" FOREIGN KEY (
	"RECEIVE_MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "CHATTING_MESSAGE" ADD CONSTRAINT "FK_CHATTING_ROOM_TO_CHATTING_MESSAGE_1" FOREIGN KEY (
	"CHAT_ROOM_NO"
)
REFERENCES "CHATTING_ROOM" (
	"CHATROOM_NO"
);

ALTER TABLE "CHATTING_MESSAGE" ADD CONSTRAINT "FK_MEMBER_TO_CHATTING_MESSAGE_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "CHATTING_ROOM" ADD CONSTRAINT "FK_BOARD_TO_CHATTING_ROOM_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "CHATTING_ROOM" ADD CONSTRAINT "FK_MEMBER_TO_CHATTING_ROOM_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);






------------------------------------------------------------------

CREATE SEQUENCE SEQ_BOARD_NO NOCACHE;
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE;

SELECT
	*
FROM

"MEMBER";

SELECT
	*
FROM
BOARD_LIKE;

SELECT
	*
FROM
	BOARD;


SELECT
*
FROM
BOARD_TYPE;


INSERT INTO
	"BOARD_TYPE"
VALUES
(
	2, '안녕'
);


----------------------------------------- 회원 추가 ------------------------------------------------

INSERT INTO
	"MEMBER"
VALUES
(
	3, 'tjdduqdl@naver.com', '1234', '성엽이', '천안', 'IMG', DEFAULT, DEFAULT
);


INSERT INTO
	"MEMBER"
VALUES
(
	4, 'ddddd@naver.com', '1234', '개울깅', '서울', 'IMG', DEFAULT, DEFAULT
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
	1,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	2,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	3,3
);

INSERT INTO
	"BOARD_LIKE"
VALUES
(
	4,3
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
    BL.MEMBER_NO = 4;
   
 SELECT
 	*
 	FROM
 	MEMBER;
 
 COMMIT;



