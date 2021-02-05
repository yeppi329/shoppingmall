CREATE TABLE dog(
	id NUMBER PRIMARY KEY,
	kind VARCHAR2(12) NOT NULL,
	price NUMBER NOT NULL,
	image VARCHAR2(20) NOT NULL,
	country VARCHAR2(12) NOT NULL,
	height NUMBER,
	weight NUMBER,
	content VARCHAR2(400),
	readcount NUMBER
);
CREATE SEQUENCE dog_seq;

INSERT INTO dog VALUES(dog_seq.nextval,'푸들',1000000,'pu.jpg','프랑스',1,20,'털많다',0);
INSERT INTO dog VALUES(dog_seq.nextval,'불독',2000000,'bul.jpg','독일',1,20,'못생겼다',0);
INSERT INTO dog VALUES(dog_seq.nextval,'진도개',3000000,'jin.jpg','대한민국',1,20,'최고다',0);
INSERT INTO dog VALUES(dog_seq.nextval,'허스키',4000000,'h.jpg','북극',1,20,'멋지다',0);

insert into dog values(dog_seq.nextval,'신라면',1000,'신라면.jpg','한국',1,20,'겁나 맛있다.',0);
insert into dog values(dog_seq.nextval,'육개장',1000,'육개장.jpg','한국',1,20,'피씨방 국룰',0);
insert into dog values(dog_seq.nextval,'참치마요',1000,'참치마요.jpg','한국',1,20,'라면과 잘어울린다',0);
insert into dog values(dog_seq.nextval,'꼬북칩 초코',1500,'꼬북칩 초코.jpg','한국',1,20,'핵꿀맛',0);
delete from dog where (kind='꼬북칩 초코');
delete from dog;
select * from dog;
COMMIT

drop table dog;
