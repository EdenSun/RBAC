/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/4/28 21:01:49                           */
/*==============================================================*/


drop table if exists TBL_MENU;

drop table if exists TBL_PERMISSION;

drop table if exists TBL_ROLE;

drop table if exists TBL_ROLE_PERMISSION;

drop table if exists TBL_USER;

drop table if exists TBL_USER_ROLE;

/*==============================================================*/
/* Table: TBL_MENU                                              */
/*==============================================================*/
create table TBL_MENU
(
   ID                   int not null auto_increment,
   TITLE                varchar(50) not null,
   IS_LEAF              int(1),
   PARENT_ID            int,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: TBL_PERMISSION                                        */
/*==============================================================*/
create table TBL_PERMISSION
(
   ID                   int not null auto_increment,
   PNAME                varchar(100) not null,
   PMENU_ID             int(11) not null,
   PSTRING              varchar(100) not null,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: TBL_ROLE                                              */
/*==============================================================*/
create table TBL_ROLE
(
   ID                   int not null auto_increment,
   RNAME                varchar(50),
   DESCRIPTION          varchar(500),
   CREATOR_ID           int,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: TBL_ROLE_PERMISSION                                   */
/*==============================================================*/
create table TBL_ROLE_PERMISSION
(
   ID                   int not null,
   ROLE_ID              int not null,
   PERMISSION_ID        int not null,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: TBL_USER                                              */
/*==============================================================*/
create table TBL_USER
(
   ID                   int not null auto_increment,
   ACCOUNT              varchar(50) not null,
   PASSWORD             varchar(20) not null,
   REAL_NAME            varchar(50),
   SEX                  int(1),
   BIRTHDAY             date,
   OFFICE_PHONE         varchar(50),
   MOBILE               varchar(50),
   EMAIL                varchar(50),
   CREATOR_ID           int,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table TBL_USER comment '”√ªß±Ì';

/*==============================================================*/
/* Table: TBL_USER_ROLE                                         */
/*==============================================================*/
create table TBL_USER_ROLE
(
   ID                   int not null,
   USER_ID              int not null,
   ROLE_ID              int not null,
   IS_DELETE            int(1) not null,
   UPDATE_TIME          datetime not null,
   CREATE_TIME          datetime not null,
   primary key (ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table TBL_PERMISSION add constraint FK_PERMISSION_MENU foreign key (PMENU_ID)
      references TBL_MENU (ID) on delete restrict on update restrict;

alter table TBL_ROLE_PERMISSION add constraint FK_ROLEPERMISSION_ROLE foreign key (ROLE_ID)
      references TBL_ROLE (ID) on delete restrict on update restrict;

alter table TBL_ROLE_PERMISSION add constraint FK_ROLEPERMISSION_PERMISSION foreign key (PERMISSION_ID)
      references TBL_PERMISSION (ID) on delete restrict on update restrict;

alter table TBL_USER_ROLE add constraint FK_USERROLE_ROLE foreign key (ROLE_ID)
      references TBL_ROLE (ID) on delete restrict on update restrict;

alter table TBL_USER_ROLE add constraint FK_USERROLE_USER foreign key (USER_ID)
      references TBL_USER (ID) on delete restrict on update restrict;

