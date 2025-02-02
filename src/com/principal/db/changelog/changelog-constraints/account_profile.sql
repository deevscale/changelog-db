--liquibase formatted sql

--changeset dom:1 context:account labels:account_profile,constraints
--precondition-sql-check expectedResult:t select exists (select from pg_tables where schemaname = 'principal' and tablename ='account_profile')
--comment: account_profile foreign keys
alter table principal.account_profile
    add constraint fk_account_profile_account foreign key (account_id) references principal.account(id),
    add constraint fk_account_profile_application foreign key (application_id) references principal.application(id);
--rollback alter table if exists principal.account_profile drop constraint if exists fk_account_profile_account;
--rollback alter table if exists principal.account_profile drop constraint if exists fk_account_profile_application;

