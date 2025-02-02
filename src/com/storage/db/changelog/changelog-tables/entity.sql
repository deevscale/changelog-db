--liquibase formatted sql

--changeset dom:1 context:entity labels:entity,tables
--comment: entity table
create table storage.entity (
    id uuid not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table storage.entity;
