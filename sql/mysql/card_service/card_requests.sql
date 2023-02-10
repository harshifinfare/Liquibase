-- liquibase formatted sql

-- changeset ningz:card_service-card_requests
create table card_service.card_service.card_requests
(
    card_request_id           int auto_increment
        primary key,
    card_request_uuid         varchar(36)                                 null,
    card_uuid                 varchar(36)                                 null,
    user_uuid                 varchar(36)                                 null,
    org_uuid                  varchar(36)                                 null,
    is_virtual                tinyint(1)     default 0                    null,
    card_name                 varchar(45)                                 null,
    category_allow_block_flag varchar(45)                                 null,
    category_list             varchar(350)                                null,
    merchant_allow_block_flag varchar(20)                                 null,
    merchant_list             varchar(350)                                null,
    velocity_window           varchar(2)                                  null,
    credit_limit              decimal(14, 4) default 0.0000               null,
    transaction_limit         decimal(14, 4) default 0.0000               null,
    shipping_address_street   varchar(200)                                null,
    shipping_address_street_2 varchar(200)                                null,
    shipping_address_city     varchar(200)                                null,
    shipping_address_state    varchar(45)                                 null,
    shipping_address_zip      varchar(15)                                 null,
    status                    varchar(20)                                 null,
    request_reason            varchar(500)                                null,
    denial_reason             varchar(500)                                null,
    reviewed_by_user_uuid     varchar(36)                                 null,
    change_date               timestamp(6)   default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    create_date               timestamp(6)   default CURRENT_TIMESTAMP(6) null
);


-- rollback DROP TABLE card_service.card_requests