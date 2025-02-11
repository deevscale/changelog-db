--liquibase formatted sql

--changeset dom:1 context:account labels:account_application_login,constraints
--precondition-sql-check expectedResult:t select exists (select from pg_tables where schemaname = 'principal' and tablename ='account_application_login')
--comment: account_application_login foreign keys
alter table principal.account_application_login
    add constraint fk_account_application_login_account foreign key (account_id) references principal.account(id),
    add constraint fk_account_application_login_application foreign key (application_id) references principal.application(id),
    add constraint fk_account_application_login_account_login foreign key (account_login_id) references principal.account_login(id);
--rollback alter table if exists principal.account_application_login drop constraint if exists fk_account_application_login_account;
--rollback alter table if exists principal.account_application_login drop constraint if exists fk_account_application_login_application;
--rollback alter table if exists principal.account_application_login drop constraint if exists fk_account_application_login_account_login;
