--liquibase formatted sql

--changeset dom:2 context:principal
--comment: user table
create table accounts (
    id uuid not null,
    username varchar not null,
    password varchar null,
    primary key (id)
);
--rollback drop table accounts;

