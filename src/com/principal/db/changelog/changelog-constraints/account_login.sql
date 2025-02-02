--liquibase formatted sql

--changeset dom:1 context:account labels:account_login,constraints
--precondition-sql-check expectedResult:t select exists (select from pg_tables where schemaname = 'principal' and tablename ='account_login')
--comment: account_login foreign keys
alter table principal.account_login
    add constraint fk_account_login_account foreign key (account_id) references principal.account(id);
--rollback alter table if exists principal.account_login_account drop constraint if exists fk_account_login_account;
