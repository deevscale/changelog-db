--liquibase formatted sql

--changeset dom:1 context:account labels:account_login,tables
--comment: accounts logins table
create table account_login (
    id uuid not null,
    account_id uuid not null,
    username varchar not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table account_login;
