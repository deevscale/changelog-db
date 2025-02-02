--liquibase formatted sql

--changeset dom:1 context:account labels:account_login_auth_password,tables
--comment: authentication with password table
create table principal.account_login_auth_password (
    id uuid not null,
    account_login_id UUID not null,
    password varchar null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table principal.account_login_auth_password;