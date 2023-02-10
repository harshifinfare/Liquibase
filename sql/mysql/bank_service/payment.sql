-- liquibase formatted sql

-- changeset ningz:bank_service-payment
create table bank_service.bank_service.payment
(
    payment_id       int auto_increment
        primary key,
    payment_uuid     varchar(36)                               null,
    payment_type     varchar(45)                               null,
    event_id         varchar(45)                               null,
    event_name       varchar(45)                               null,
    status           varchar(45)                               null,
    resources        varchar(200)                              null,
    direction        varchar(45)                               null,
    amount           decimal(14, 4)                            null,
    description      varchar(45)                               null,
    org_uuid         varchar(36)                               null,
    created_by_uuid  varchar(36)                               null,
    reference_id     varchar(45)                               null,
    originator       varchar(45)                               null,
    institution_name varchar(255)                              null,
    receiver         varchar(45)                               null,
    originator_id    varchar(45)                               null,
    receiver_id      varchar(45)                               null,
    transaction_type varchar(45)                               null,
    service_type     varchar(45)                               null,
    mask             varchar(4)                                null,
    schedule_uuid    varchar(36)                               null,
    plaid_account_id varchar(45)                               null,
    create_date      timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date      timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6)
);


-- rollback DROP TABLE bank_service.payment