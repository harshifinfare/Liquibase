-- liquibase formatted sql

-- changeset ningz:ledger-mcc_id_fem_categories
create table ledger.ledger.mcc_id_fem_categories
(
    mcc                       int          not null,
    edited_description        varchar(255) null,
    finfare_card_restrictions varchar(45)  null,
    combined_description      varchar(255) null,
    usda_description          varchar(255) null,
    irs_description           varchar(255) null,
    irs_reportable            varchar(45)  null,
    fem_group_id              int          not null,
    primary key (mcc),
    constraint fk_mcc_id_fem_categories_fem_mcc_groups1
        foreign key (fem_group_id) references onboarding.fem_mcc_groups (fem_group_id)
);

create index fk_mcc_id_fem_categories_fem_mcc_groups1_idx
    on ledger.mcc_id_fem_categories (fem_group_id);


-- rollback DROP TABLE ledger.mcc_id_fem_categories