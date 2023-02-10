-- liquibase formatted sql

-- changeset ningz:application_ledger-alloy_log
create table application_ledger.application_ledger.alloy_log
(
    id                        int auto_increment
        primary key,
    evaluation_token          varchar(45)                               null,
    entity_token              varchar(45)                               null,
    application_token         varchar(45)                               null,
    application_version_id    int                                       null,
    alloy_fraud_check_outcome varchar(20)                               null,
    alloy_kyb_outcome         varchar(20)                               null,
    create_date               timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date               timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6)
);


-- rollback DROP TABLE application_ledger.alloy_log