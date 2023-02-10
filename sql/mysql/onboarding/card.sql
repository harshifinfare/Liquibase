-- liquibase formatted sql

-- changeset ningz:onboarding-card
create table onboarding.onboarding.card
(
    card_id                    int auto_increment
        primary key,
    change_date                timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    card_number_4              varchar(20)                               null,
    expiration_date_month      int          default 0                    null,
    expiration_date_year       int          default 0                    null,
    card_name                  varchar(45)                               null,
    description                longtext                                  null,
    card_status                int          default 0                    null,
    change_reason              varchar(45)                               null,
    marqeta_card_token         varchar(36)                               null,
    marqeta_card_product_token varchar(36)                               null,
    spend_membership_group_id  int                                       null,
    card_holder_name           varchar(500)                              null,
    is_virtual                 tinyint(1)   default 1                    null,
    peach_draw                 blob                                      null,
    create_date                timestamp(6) default CURRENT_TIMESTAMP(6) null,
    user_id                    int                                       null,
    org_id                     int                                       null,
    org_uuid                   varchar(36)                               null,
    user_uuid                  varchar(36)                               null,
    card_uuid                  varchar(36)                               null,
    request_reason             varchar(500)                              null
);

create index date_index
    on onboarding.card (create_date, change_date);

create index fk_marqeta_card_token
    on onboarding.card (marqeta_card_token);


-- rollback DROP TABLE onboarding.card