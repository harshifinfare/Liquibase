-- liquibase formatted sql

-- changeset ningz:spend_control-spend_control_card
create table spend_control.spend_control.spend_control_card
(
    spend_control_id          int auto_increment
        primary key,
    status                    enum ('ACTIVE', 'PENDING', 'SUSPENDED', 'TERMINATED') null,
    mcc_group_allow           varchar(45)                                           null,
    category_allow_block_flag varchar(45)                                           null,
    category_list             varchar(350)                                          null,
    merchant_allow_block_flag varchar(20)                                           null,
    merchant_list             varchar(350)                                          null,
    velocity_window           enum ('D', 'W', 'M', 'OT', 'Y')                       null,
    balance                   decimal(14, 4) default 0.0000                         null,
    credit_limit              decimal(14, 4) default 0.0000                         null,
    transaction_limit         decimal(14, 4) default 0.0000                         null,
    create_date               timestamp(6)   default CURRENT_TIMESTAMP(6)           null,
    change_date               timestamp(6)   default CURRENT_TIMESTAMP(6)           null on update CURRENT_TIMESTAMP(6),
    spend_control_uuid        varchar(36)                                           not null,
    org_uuid                  varchar(36)                                           not null,
    user_uuid                 varchar(36)                                           not null,
    card_uuid                 varchar(36)                                           not null,
    constraint spend_control_uuid_UNIQUE
        unique (spend_control_uuid)
);

create index uuid_index
    on spend_control.spend_control_card (org_uuid, card_uuid);


-- rollback DROP TABLE spend_control.spend_control_card