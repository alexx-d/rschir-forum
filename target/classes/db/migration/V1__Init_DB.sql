create table post
(
    id       bigint        not null auto_increment,
    filename varchar(255),
    title    varchar(255) not null,
    created_date timestamp DEFAULT CURRENT_TIMESTAMP,
    tag      varchar(128),
    text     varchar(8192) not null,
    user_id  bigint,
    primary key (id)
);

create table user_role
(
    user_id bigint not null,
    roles   varchar(255)
);

create table usr
(
    id              bigint       not null auto_increment,
    activation_code varchar(255),
    active          bit          not null,
    email           varchar(255),
    password        varchar(255) not null,
    username        varchar(255) not null,
    primary key (id)
);

alter table post
    add constraint post_user_fk
        foreign key (user_id) references usr (id);

alter table user_role
    add constraint user_role_user_fk
        foreign key (user_id) references usr (id);
