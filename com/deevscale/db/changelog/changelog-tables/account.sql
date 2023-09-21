--liquibase formatted sql

--changeset dom:1 context:account labels:account,tables
--comment: accounts table
create table account (
    id uuid not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table account;
