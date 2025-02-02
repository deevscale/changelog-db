--liquibase formatted sql

--changeset dom:1 context:entity labels:entity_metadata,constraints
--precondition-sql-check expectedResult:t select exists (select from pg_tables where schemaname = 'storage' and tablename ='entity_metadata')
--comment: entity_metadata foreign keys
alter table storage.entity_metadata
    add constraint fk_entity_metadata_entity foreign key (entity_id) references storage.entity(id)
--rollback alter table if exists storage.entity_metadata drop constraint if exists fk_entity_metadata_entity;
