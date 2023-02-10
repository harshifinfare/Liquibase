-- liquibase formatted sql

-- changeset ningz:onboarding-org_owner
create table onboarding.onboarding.org_owner
(
    owner_id               int auto_increment
        primary key,
    is_only_owner_over25   tinyint(1)   default 0                    null,
    phone                  varchar(45)                               null,
    email                  varchar(320)                              null,
    first_name             varchar(256)                              null,
    middle_name            varchar(45)                               null,
    last_name              varchar(256)                              null,
    address_street         varchar(200)                              null,
    address_street_line2   varchar(200)                              null,
    address_city           varchar(200)                              null,
    address_state          varchar(45)                               null,
    address_zip            varchar(20)                               null,
    address_country        varchar(200)                              null,
    is_officer             tinyint(1)   default 0                    null,
    title                  varchar(200)                              null,
    fraud_check_id         int                                       null,
    fraud_check_source     varchar(45)  default 'Alloy'              null,
    prefix                 varchar(45)                               null,
    suffix                 varchar(45)                               null,
    create_date            timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date            timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    owner_uuid             varchar(36)                               null,
    org_id                 int          default 1                    null,
    org_uuid               varchar(36)                               null,
    metadata               blob                                      null,
    ownership_percentage   float                                     null,
    tax_id                 int                                       null,
    country_of_citizenship varchar(200)                              null,
    crb_customer_uuid      varchar(45)                               null
);


-- rollback DROP TABLE onboarding.org_owner