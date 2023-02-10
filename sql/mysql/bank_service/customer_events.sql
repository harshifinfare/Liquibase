-- liquibase formatted sql

-- changeset ningz:bank_service-customer_events
create table bank_service.bank_service.customer_events
(
    event_uuid    varchar(45)                               not null,
    customer_uuid varchar(45)                               not null,
    status        varchar(36)                               null,
    details       varchar(512)                              null,
    event_name    varchar(45)                               null,
    created_at    datetime                                  not null,
    partner_id    varchar(45)                               null,
    ofac          varchar(45)                               null,
    pep_scan      varchar(45)                               null,
    internal_list varchar(45)                               null,
    resources     varchar(512)                              null,
    create_date   timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date   timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (event_uuid)
);


-- rollback DROP TABLE bank_service.customer_events