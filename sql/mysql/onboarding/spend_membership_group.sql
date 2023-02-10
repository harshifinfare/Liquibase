-- liquibase formatted sql

-- changeset ningz:onboarding-spend_membership_group
create table onboarding.onboarding.spend_membership_group
(
    spend_membership_group_id int auto_increment
        primary key,
    name                      varchar(256)                                null,
    token                     varchar(45) charset armscii8                null,
    active                    tinyint(1)     default 1                    null,
    config_level              int                                         null,
    mcc_group_allow           varchar(64)                                 null,
    mcc_group_not_allow       varchar(64)                                 null,
    velocity_window           varchar(2)                                  null,
    balance                   decimal(14, 4) default 0.0000               null,
    credit_limit              decimal(14, 4) default 0.0000               null,
    transaction_limit         decimal(14, 4) default 0.0000               null,
    create_date               timestamp(6)   default CURRENT_TIMESTAMP(6) null,
    change_date               timestamp(6)   default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6)
);


-- rollback DROP TABLE onboarding.spend_membership_group