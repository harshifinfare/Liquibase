-- liquibase formatted sql

-- changeset ningz:onboarding-fem_mcc_groups
create table onboarding.onboarding.fem_mcc_groups
(
    fem_group_id int          not null,
    category     varchar(256) null,
    primary key (fem_group_id)
);


-- rollback DROP TABLE onboarding.fem_mcc_groups