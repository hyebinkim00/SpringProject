create table member(
 id varchar2(10),
 carname varchar2(20) not null,
 facname varchar2(50) not null 
);

ALTER TABLE member add fuel varchar2(20);

ALTER TABLE member add cartype varchar2(20);
ALTER TABLE member add carnum varchar2(20);

insert into member(id,carname,facname) values ('11-11','K3','기아');
insert into member(id,carname,facname) values ('22-22','모닝','기아');
insert into member(id,carname,facname) values ('33-33','K5','기아');
insert into member(id,carname,facname) values ('77-77','K7','기아');

insert into member(id,carname,facname) values ('44-44','아반떼4','현대');
insert into member(id,carname,facname) values ('55-55','아반떼5','현대');
insert into member(id,carname,facname,fuel,cartype,carnum) values ('99-99','K9','기아','휘발유','중형','2');



select * from member where fuel='휘발유' or fuel='LPG';

update MEMBER set fuel='LPG' where id='77-77';
update MEMBER set cartype='중형' where id='66-66';

update MEMBER set carnum='3' where facname='기아';

select * from member where facname='기아' ;
select * from board;
select * from member;
drop table member;

update member set carnum='아반떼' where carname='아반떼8';

