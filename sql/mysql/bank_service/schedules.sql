-- liquibase formatted sql

-- changeset ningz:bank_service-schedules
create table bank_service.bank_service.schedules
(
    schedule_uuid   varchar(36)                                   not null,
    schedule_type   varchar(45)                                   null,
    runs_at         varchar(45)                                   null,
    timezone        varchar(45)                                   null,
    active          varchar(45)                                   null,
    created_by_uuid varchar(36)                                   null,
    status          int                                           null,
    org_uuid        varchar(36)                                   null,
    account_id      varchar(128)                                  null,
    amount          decimal(14, 4)                                null,
    is_deleted      tinyint unsigned default '0'                  null,
    created_by_name varchar(45)                                   null,
    create_date     timestamp(6)     default CURRENT_TIMESTAMP(6) null,
    change_date     timestamp(6)     default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (schedule_uuid)
);


-- rollback DROP TABLE bank_service.schedules