--liquibase formatted sql

--changeset dom:1 context:account labels:account_login_auth_password,constraints
--precondition-sql-check expectedResult:t select exists (select from pg_tables where schemaname = 'principal' and tablename ='account_login_auth_password')
--comment: account_login_auth_password foreign keys
alter table account_login_auth_password
    add constraint fk_account_auth_password_account_login foreign key (account_login_id) references account_login(id);
--rollback alter table if exists account_login_auth_password drop constraint if exists fk_account_auth_password_account_login;
