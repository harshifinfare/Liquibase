-- liquibase formatted sql

-- changeset ningz:spend_control-spend_control_org
create table spend_control.spend_control.spend_control_org
(
    spend_control_id   int auto_increment
        primary key,
    status             enum ('ACTIVE', 'PENDING', 'SUSPENDED', 'TERMINATED') null,
    mcc_group_allow    varchar(45)                                           null,
    balance            decimal(14, 4) default 0.0000                         null,
    credit_limit       decimal(14, 4) default 0.0000                         null,
    create_date        timestamp(6)   default CURRENT_TIMESTAMP(6)           null,
    change_date        timestamp(6)   default CURRENT_TIMESTAMP(6)           null on update CURRENT_TIMESTAMP(6),
    spend_control_uuid varchar(36)                                           not null,
    org_uuid           varchar(36)                                           not null,
    constraint spend_control_uuid_UNIQUE
        unique (spend_control_uuid)
);

create index seach_index
    on spend_control.spend_control_org (org_uuid);

create index uuid_index
    on spend_control.spend_control_org (spend_control_uuid);


-- rollback DROP TABLE spend_control.spend_control_org