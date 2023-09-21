--liquibase formatted sql

--changeset dom:1 context:principal labels:principal,tables
--comment: principal table
create table principal (
    id uuid not null,
    name varchar not null,
    primary key (id)
);
--rollback drop table principal;

