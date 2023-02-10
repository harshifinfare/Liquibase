-- liquibase formatted sql

-- changeset ningz:bank_service-account_details
create table bank_service.bank_service.account_details
(
    account_uuid     varchar(36)                               not null,
    plaid_account_id varchar(45)                               null,
    org_uuid         varchar(36)                               null,
    nickname         varchar(45)                               null,
    institution      varchar(45)                               null,
    name             varchar(45)                               null,
    mask             varchar(45)                               null,
    type             varchar(45)                               null,
    subtype          varchar(45)                               null,
    status           varchar(45)                               null,
    create_date      timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date      timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    item_uuid        varchar(36)                               null,
    is_deleted       tinyint(1)   default 0                    null,
    primary key (account_uuid)
);


-- rollback DROP TABLE bank_service.account_details