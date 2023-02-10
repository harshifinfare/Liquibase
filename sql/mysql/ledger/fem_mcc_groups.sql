-- liquibase formatted sql

-- changeset ningz:ledger-fem_mcc_groups
create table ledger.ledger.fem_mcc_groups
(
    fem_group_id int          not null,
    category     varchar(256) null,
    primary key (fem_group_id)
);


-- rollback DROP TABLE ledger.fem_mcc_groups