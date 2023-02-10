-- liquibase formatted sql

-- changeset ningz:bank_service-plaid_event
create table bank_service.bank_service.plaid_event
(
    event_uuid   varchar(45) not null,
    webhook_type varchar(45) null,
    webhook_code varchar(45) null,
    item_id      varchar(45) null,
    account_id   varchar(45) null,
    environment  varchar(45) null,
    primary key (event_uuid)
);


-- rollback DROP TABLE bank_service.plaid_event