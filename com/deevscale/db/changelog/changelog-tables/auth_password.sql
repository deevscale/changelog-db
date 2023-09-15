--liquibase formatted sql

--changeset dom:3 context:principal
--comment: authentication with password table
create table auth_password (
    id uuid not null,
    account_id UUID not null,
    password varchar null,
    created_at timestamp not null,
    created_by uuid null,
    modified_at timestamp null,
    modified_by uuid null,
    deleted_at timestamp null,
    deleted_by uuid null,
    primary key (id),
    constraint fk_auth_password_account_created_by foreign key (created_by) references account(id),
    constraint fk_auth_password_account_modified_by foreign key (modified_by) references account(id),
    constraint fk_auth_password_account_deleted_by foreign key (deleted_by) references account(id)
);
--rollback drop table auth_password;