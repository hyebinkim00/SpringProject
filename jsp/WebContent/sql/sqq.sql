create table member(
 id varchar2(10),
 carname varchar2(20) not null,
 facname varchar2(50) not null 
);

ALTER TABLE member add fuel varchar2(20);

ALTER TABLE member add cartype varchar2(20);
ALTER TABLE member add carnum varchar2(20);

insert into member(id,carname,facname) values ('11-11','K3','���');
insert into member(id,carname,facname) values ('22-22','���','���');
insert into member(id,carname,facname) values ('33-33','K5','���');
insert into member(id,carname,facname) values ('77-77','K7','���');

insert into member(id,carname,facname) values ('44-44','�ƹݶ�4','����');
insert into member(id,carname,facname) values ('55-55','�ƹݶ�5','����');
insert into member(id,carname,facname,fuel,cartype,carnum) values ('99-99','K9','���','�ֹ���','����','2');



select * from member where fuel='�ֹ���' or fuel='LPG';

update MEMBER set fuel='LPG' where id='77-77';
update MEMBER set cartype='����' where id='66-66';

update MEMBER set carnum='3' where facname='���';

select * from member where facname='���' ;
select * from board;
select * from member;
drop table member;

update member set carnum='�ƹݶ�' where carname='�ƹݶ�8';

