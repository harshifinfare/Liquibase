-- liquibase formatted sql

-- changeset ningz:onboarding-card_templates
create table onboarding.onboarding.card_templates
(
    card_template_uuid varchar(36)                                 not null,
    name               varchar(45)                                 null,
    card_limit         decimal(14, 4) default 0.0000               null,
    frequency          varchar(45)    default '0'                  null,
    transaction_limit  decimal(14, 4) default 0.0000               null,
    allowed_categories varchar(200)                                null,
    blocked_categories varchar(200)                                null,
    allowed_merchants  varchar(200)                                null,
    blocked_merchants  varchar(200)                                null,
    created_by         varchar(36)    default '0'                  null,
    updated_by         varchar(36)    default '0'                  null,
    org_uuid           varchar(36)                                 null,
    create_date        timestamp(6)   default CURRENT_TIMESTAMP(6) null,
    change_date        timestamp(6)   default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (card_template_uuid)
);


-- rollback DROP TABLE onboarding.card_templates