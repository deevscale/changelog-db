--liquibase formatted sql

--changeset dom:1 context:account labels:account_application_login,tables
--comment: accounts logins table
create table account_application_login (
    id uuid not null,
    account_id uuid not null,
    application_id uuid not null,
    account_login_id uuid not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table account_application_login;
