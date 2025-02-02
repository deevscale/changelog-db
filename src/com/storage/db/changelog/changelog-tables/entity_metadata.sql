--liquibase formatted sql

--changeset dom:1 context:entity labels:entity,tables
--comment: entity_metadata table
create table storage.entity_metadata (
    id uuid not null,
    entity_id uuid not null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table storage.entity_metadata;
