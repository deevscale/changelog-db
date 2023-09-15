--liquibase formatted sql

--changeset dom:2 context:principal
--comment: accounts table
create table account (
    id uuid not null,
    username varchar not null,
    created_at timestamp not null,
    created_by uuid null,
    modified_at timestamp null,
    modified_by uuid null,
    deleted_at timestamp null,
    deleted_by uuid null,
    primary key (id),
    constraint fk_account_account_created_by foreign key (created_by) references account(id),
    constraint fk_account_account_modified_by foreign key (modified_by) references account(id),
    constraint fk_account_account_deleted_by foreign key (deleted_by) references account(id)
);
--rollback drop table accounts;
