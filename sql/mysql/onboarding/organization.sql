-- liquibase formatted sql

-- changeset ningz:onboarding-organization
create table onboarding.onboarding.organization
(
    org_id                         int auto_increment
        primary key,
    change_date                    timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    name_on_card                   varchar(200)                              null,
    status                         int          default 0                    null,
    signup_status                  int          default 0                    null,
    annual_revenue                 int          default 0                    null,
    phone                          varchar(15)                               null,
    corp_size                      int          default 0                    null,
    corp_monthly_spend             int          default 0                    null,
    corp_bank_balance              double       default 0                    null,
    corp_structure                 json                                      null,
    desire_credit_limit            int          default 0                    null,
    email                          varchar(320)                              null,
    business_state                 varchar(45)                               null,
    industry                       int          default 0                    null,
    departments                    json                                      null,
    locations                      json                                      null,
    business_DBA                   varchar(200)                              null,
    business_Name                  varchar(200)                              null,
    business_EIN                   varchar(20)                               null,
    business_website               varchar(200)                              null,
    business_type                  varchar(45)                               null,
    business_phone                 varchar(45)                               null,
    business_address_street        varchar(200)                              null,
    business_address_street_2      varchar(200)                              null,
    business_address_city          varchar(200)                              null,
    business_address_state         varchar(45)                               null,
    business_address_zip           varchar(15)                               null,
    has_owner_over_25_share        tinyint(1)                                null,
    attestation_consent            tinyint(1)                                null,
    attestation_date               datetime                                  null,
    attester_name                  varchar(64)                               null,
    attester_title                 varchar(64)                               null,
    date_established               datetime                                  null,
    duns_number                    varchar(255)                              null,
    general_business_description   varchar(255)                              null,
    history                        varchar(255)                              null,
    website                        varchar(255)                              null,
    in_current_location_since      datetime                                  null,
    international_office_locations varchar(255)                              null,
    notes                          varchar(255)                              null,
    marqeta_business_token         varchar(36)                               null,
    peach_ids                      blob                                      null,
    spend_membership_group_id      int                                       null,
    signee_info                    json                                      null,
    codat_company_id               varchar(255)                              null,
    codat_accounting_id            varchar(255)                              null,
    codat_accounting_name          varchar(64)                               null,
    create_date                    timestamp(6) default CURRENT_TIMESTAMP(6) null,
    spend_control_uuid             varchar(36)                               null,
    org_uuid                       varchar(36)                               null,
    crb_business_customer_uuid     varchar(45)                               null
);

create index marqeta_business_token_UNIQUE
    on onboarding.organization (marqeta_business_token);


-- rollback DROP TABLE onboarding.organization