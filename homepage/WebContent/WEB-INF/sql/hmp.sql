drop table hmp;

create table hmp (
	id			varchar(10)		not	null, 				--아이디 중복 x, 레코드를 구분하는 컬럼
	passwd		varchar(20)		not null, 				--패스워드, 영숫자 조합
	name		varchar(20)		not null, 				--성명, 한글 10자 저장 가능
	tel			varchar(14)			null, 				--전화번호
	email		varchar(50)		not null UNIQUE,		--전자우편 주소, 중복x 
	zipcode		varchar(7)			null,				--우편번호, 101-101
	address1	varchar(150)		null,				--주소1
	address2	varchar(50)			null,				--주소2
	hdate		DATE			not null,				--가입일
	filename	varchar(50)		default 'member.jpg',	--회원 사진
	grade		char(1)			default 'H',			--일반회원:H, 정지:Y, 손님:Z
	primary key (id)
);

--primart key가 num 일 때.. 
select nvl(max(num), 0)+1 from homepage;


--create
insert into hmp (id, passwd, name, tel, email, zipcode,
address1, address2, hdate, filename, grade)
values('user1', '1234', '서나', '236-5623', 'email1@mail.com', '12345',
'인천광역시', '남구', sysdate, 'member.jpg', 'H');

--read


--update


--delete


--list


--중복 id 검사 관련 SQL (0:중복아님, 1:중복)
select count(id)
from hmp
where id = 'user1';

--중복 email 검사 관련 SQL
select count(email) as cnt
from hmp
where email = 'email1@mail.com';








