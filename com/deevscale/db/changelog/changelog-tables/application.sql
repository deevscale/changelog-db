--liquibase formatted sql

--changeset dom:1 context:application labels:application,tables
--comment: application table
create table application (
    id uuid not null,
    name varchar not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table application;
