/* create database */

create database knowhow;

use knowhow;


/* tbl_member */
create table tbl_member
(
 member_id int unsigned auto_increment primary key,
 member_identification varchar(500) not null unique,
 member_password varchar(500) not null,
 member_name varchar(500) not null,
 member_age int not null,
 member_email varchar(500) not null,
 member_job varchar(500) null,
 member_nickname varchar(500) not null,
 member_profile_system_name varchar(500) null,
 member_profile_original_name varchar(500) null,
 member_profile_file_path varchar(500) null,
 resume_existence boolean not null default false
 );

--select * from tbl_member;




/* tbl_resume */

create table tbl_resume
(
 resume_id int unsigned auto_increment primary key,
 resume_original_name varchar(500) not null,
 resume_system_name varchar(500) not null unique,
 resume_path varchar(500) not null,
 member_id int unsigned not null,
 foreign key(member_id) references tbl_member(member_id)
);

--select * from tbl_resume;




/* banner */ 

create table tbl_banner 
(
  banner_id int unsigned auto_increment primary key,
  banner_original_name varchar(500) not null,
  banner_system_name varchar(500) not null unique,
  banner_file_path varchar(500) not null
);

--select * from tbl_banner;




/* category */

create table tbl_category 
(
  category_id int unsigned auto_increment primary key,
  category_name varchar(45) not null
);

--select * from tbl_category;



/* tbl_question */

create table  tbl_question 
(
  question_id int unsigned auto_increment primary key,
  question_title varchar(500) not null,
  question_content varchar(10000) not null, 
  question_regdate datetime not null default now(),
  question_upddate datetime not null default now(),
  member_id int unsigned not null,
  category_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id),
  foreign key(category_id) references tbl_category(category_id)
  );

--select * from tbl_question;




/* tbl_question_comment */ 

create table  tbl_question_comment 
(
  comment_id int unsigned auto_increment primary key,
  comment_content varchar(500) not null,
  comment_depth int not null,
  comment_regdate datetime not null default now(),
  comment_upddate datetime not null default now(),
  comment_group int not null,
  member_id int unsigned not null,
  question_id int unsigned not null,

  foreign key(member_id) references tbl_member(member_id),
  foreign key(question_id) references tbl_question(question_id)
);

--select * from tbl_question_comment;



/* tbl_question_like */ 

create table tbl_question_like 
(
  like_id int unsigned auto_increment primary key,
  member_id int unsigned not null,
  question_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id),
  foreign key(question_id) references tbl_question(question_id)
);

--select * from tbl_question_like;



/* tbl_answer */ 

create table tbl_answer 
(
  answer_id int unsigned auto_increment primary key,
  answer_title varchar(500) not null,
  answer_content varchar(10000) not null,
  answer_regdate datetime not null default now(),
  answer_upddate  datetime not null default now(),
  member_id int unsigned not null,
  question_id int unsigned not null,

  foreign key(member_id) references tbl_member(member_id),
  foreign key(question_id) references tbl_question(question_id)
);

--select * from tbl_answer;




/* tbl_answer_comment */ 

create table tbl_answer_comment 
(
  answer_comment_id int unsigned auto_increment primary key,
  answer_comment_content varchar(500) not null,
  answer_comment_depth int not null,
  answer_comment_regdate datetime not null default now(),
  answer_comment_upddate datetime not null default now(),
  answer_comment_group int not null ,
  member_id int unsigned not null ,
  answer_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id),
  foreign key(answer_id) references tbl_answer(answer_id)
);

--select * from tbl_answer_comment;




/* tbl_answer_like */

create table tbl_answer_like 
(
  answer_like_id int unsigned auto_increment primary key,
  member_id int unsigned not null,
  answer_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id),
  foreign key(answer_id) references tbl_answer(answer_id)
);

--select * from tbl_answer_like;




/* tbl_ask_admin */

create table tbl_ask_admin 
(
  ask_admin_id int unsigned auto_increment primary key,
  ask_admin_title varchar(500) not null,
  ask_admin_regdate datetime not null default now(),
  ask_admin_upddate datetime not null default now(),
  ask_admin_content varchar(10000) not null,
  ask_admin_answer_status boolean not null default false,
  member_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id)
  );

--select * from tbl_ask_admin;




/* tbl_ask_admin_answer */ 

create table tbl_ask_admin_answer 
(
  ask_admin_answer_id int unsigned auto_increment primary key,
  ask_admin_answer_content varchar(1000) not null,
  ask_admin_answer_regdate datetime not null default now(),
  ask_admin_answer_upddate datetime not null default now(),
  member_id int unsigned not null,
  ask_admin_id int unsigned not null,
  foreign key(member_id) references tbl_member(member_id),
  foreign key(ask_admin_id) references tbl_ask_admin(ask_admin_id)
);

--select * from tbl_ask_admin_answer;





/* drop tables ==> 아래부터 순서대로 */ 

drop table tbl_member;
drop table tbl_resume;
drop table tbl_banner;
drop table tbl_category;
drop table tbl_question;
drop table tbl_question_comment;
drop table tbl_question_like;
drop table tbl_answer;
drop table tbl_answer_comment;
drop table tbl_answer_like;
drop table tbl_ask_admin;
drop table tbl_ask_admin_answer;


/* select tables */ 

select * from tbl_member;
select * from tbl_resume;
select * from tbl_banner;
select * from tbl_category;
select * from tbl_question;
select * from tbl_question_comment;
select * from tbl_question_like;
select * from tbl_answer;
select * from tbl_answer_comment;
select * from tbl_answer_like;
select * from tbl_ask_admin;
select * from tbl_ask_admin_answer;



















