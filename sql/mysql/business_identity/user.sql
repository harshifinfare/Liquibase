-- liquibase formatted sql

-- changeset ningz:business_identity-user
create table business_identity.business_identity.user
(
    user_id                   int auto_increment
        primary key,
    change_date               timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    token                     longtext                                  null,
    refresh_token             longtext                                  null,
    phone                     varchar(45)                               null,
    email                     varchar(320)                              null,
    ssn                       varchar(45)                               null,
    dob                       date                                      null,
    first_name                varchar(256)                              null,
    mid_name                  varchar(256)                              null,
    last_name                 varchar(256)                              null,
    status                    int          default 0                    null,
    credit_limit              double       default 0                    null,
    role                      int          default 0                    null,
    title                     varchar(200)                              null,
    location                  varchar(45)                               null,
    department                varchar(255)                              null,
    address_street            varchar(200)                              null,
    address_street_line2      varchar(200)                              null,
    address_city              varchar(200)                              null,
    address_state             varchar(45)                               null,
    address_country           varchar(200)                              null,
    address_zip               varchar(15)                               null,
    proof_applicant_address   varchar(200)                              null,
    refresh_expiration        date                                      null,
    is_current_user           tinyint(1)   default 0                    not null,
    corporate_card_holder     tinyint(1)                                null,
    honorific                 varchar(10)                               null,
    id_card_expiration_date   datetime                                  null,
    id_card_number            varchar(255)                              null,
    identifications           json                                      null,
    ip_address                varchar(255)                              null,
    notes                     varchar(255)                              null,
    marqeta_user_token        varchar(36)                               null,
    marqeta_parent_user_token varchar(36)                               null,
    pending_balance           double       default 0                    null,
    available_balance         double       default 0                    null,
    create_date               timestamp(6) default CURRENT_TIMESTAMP(6) null,
    org_uuid                  varchar(36)                               null,
    user_uuid                 varchar(36)                               null
);

create index fk_marqeta_user_token
    on business_identity.user (marqeta_user_token);


-- rollback DROP TABLE business_identity.user