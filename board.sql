
insert into BOARD values(1,'최예림','1111','ㅣㅗㅓㅏㅣ호나는','니아러','b.png',1,0,0,0,sysdate);
insert into BOARD values(2,'박재웅','1111','나ㅏㅀ포ㅓㅏ는','니아ㅡ','b.png',2,0,0,0,sysdate);
insert into BOARD values(3,'박예빈','1111','나는','니아러','b.png',3,0,0,0,sysdate);
insert into BOARD values(4,'김희선','1111','너는','니아러','b.png',4,0,0,0,sysdate);
insert into BOARD values(5,'이예진','1111','가는','니아러','b.png',5,0,0,0,sysdate);
insert into BOARD values(6,'안윤주','1111','오는','니아러','b.png',6,0,0,0,sysdate);
insert into BOARD values(7,'안선영','1111','나는','니아러','b.png',7,0,0,0,sysdate);


insert into BOARD values(8,'김개똥','1111','ㄴㅇㄱ','니아러','b.png',8,0,0,0,sysdate);
insert into BOARD values(9,'ㄱㅏ람','1111','나는','니아러','b.png',9,0,0,0,sysdate);
insert into BOARD values(10,'김수한','1111','나ㄴㅇㄱㄴ는','니아러','b.png',10,0,0,0,sysdate);
insert into BOARD values(11,'김무거','1111','ㅁㄴㅇㄹ','니아러','b.png',11,0,0,0,sysdate);
insert into BOARD values(12,'북이가','1111','나ㅁㄴㅇㄹ','니아러','b.png',12,0,0,0,sysdate);
insert into BOARD values(13,'두루미','1111','ㅁ놑ㅊ푸나는','니아러','b.png',13,0,0,0,sysdate);
insert into BOARD values(14,'삼천갑','1111','나호ㅓㅣㅎ롸는','니아러','b.png',14,0,0,0,sysdate);
insert into BOARD values(15,'자동방','1111','ㅣㅗㅓㅏㅣ호나는','니아러','b.png',15,0,0,0,sysdate);
insert into BOARD values(16,'석치치','1111','나ㅏㅀ포ㅓㅏ는','니아ㅡ','b.png',16,0,0,0,sysdate);
insert into BOARD values(17,'카포','1111','나는','니아러','b.png',17,0,0,0,sysdate);
insert into BOARD values(18,'사리사리','1111','너는','니아러','b.png',18,0,0,0,sysdate);
insert into BOARD values(19,'세쁘리깡','1111','가는','니아러','b.png',19,0,0,0,sysdate);
insert into BOARD values(20,'허리케인','1111','오는','니아러','b.png',20,0,0,0,sysdate);
insert into BOARD values(21,'돌돌이','1111','나는','니아러','b.png',21,0,0,0,sysdate);

CREATE TABLE BOARD(
	BOARD_NUM NUMBER,
	BOARD_NAME VARCHAR2(20),
	BOARD_PASS VARCHAR2(15),
	BOARD_SUBJECT VARCHAR2(50),
	BOARD_CONTENT VARCHAR2(2000),
	BOARD_FILE VARCHAR2(50),
	BOARD_RE_REF NUMBER,
	BOARD_RE_LEV NUMBER,
	BOARD_RE_SEQ NUMBER,
	BOARD_READCOUNT NUMBER,
	BOARD_DATE DATE,
	PRIMARY KEY(BOARD_NUM)									
);

SELECT * FROM BOARD;
select * from member1;
delete from member1;
CREATE TABLE MEMBER1(
	MEMBER_ID	VARCHAR2(15),
	MEMBER_PW	VARCHAR2(13),
	MEMBER_NAME	VARCHAR2(15),
	MEMBER_AGE	NUMBER,
	MEMBER_GENDER	VARCHAR2(5),
	MEMBER_EMAIL	VARCHAR2(30),
	PRIMARY KEY(MEMBER_ID)
);

ALTER TABLE BOARD ADD CONSTRAINT BOARD_BOARDNAME_UK UNIQUE(BOARD_NAME);
ALTER TABLE BOARD MODIFY (BOARD_NAME CONSTRAINT BOARD_BOARDNAME_NN NOT NULL);

alter table board drop constraint board_boardname_nn;
ALTER TABLE BOARD ADD CONSTRAINT pk_board_name FOREIGN KEY(BOARD_NAME) REFERENCES MEMBER1(MEMBER_ID);


alter table board add constraint board_name_fk foreign key(board_name) references member1(MEMBER_ID)on delete cascade;


drop table board;
drop table member1;
select * from users;

select * from student;
