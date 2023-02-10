-- liquibase formatted sql

-- changeset ningz:bank_service-payment_events
create table bank_service.bank_service.payment_events
(
    event_uuid    varchar(36)                               not null,
    payment_uuid  varchar(36)                               null,
    event_name    varchar(45)                               null,
    status        varchar(45)                               null,
    partner_id    varchar(45)                               null,
    created_at    varchar(45)                               null,
    resources     varchar(512)                              null,
    details       varchar(521)                              null,
    create_date   timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date   timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    schedule_uuid varchar(36)                               null,
    primary key (event_uuid)
);


-- rollback DROP TABLE bank_service.payment_events