-- liquibase formatted sql

-- changeset ningz:application_ledger-plaid_items
create table application_ledger.application_ledger.plaid_items
(
    id           int auto_increment
        primary key,
    item_id      varchar(45)                               not null,
    access_token varchar(100)                              not null,
    status       tinyint(1)   default 0                    null,
    create_date  timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date  timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    org_id       int          default 1                    not null,
    item_uuid    varchar(36)                               null
);


-- rollback DROP TABLE application_ledger.plaid_items