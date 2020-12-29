drop table client cascade constraint;
drop table leaderboard cascade constraint;
create table client (
	id varchar(20) primary key,
	pw varchar(20) not null
);
create table leaderboard (
	id varchar(20),
	score number(10),
	time varchar(30) primary key
);

insert into client values ('testid', 'testpw');
commit;

alter table leaderboard add foreign key (id) references client (id);