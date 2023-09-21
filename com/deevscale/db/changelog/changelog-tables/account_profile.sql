--liquibase formatted sql

--changeset dom:1 context:account labels:account_profile,tables
--comment: account_profile table
create table account_profile (
    id uuid not null,
    account_id uuid not null,
    application_id uuid not null,
    first_name varchar null,
    deleted boolean not null default(false),
    primary key (id)
);
--rollback drop table account_profile;

