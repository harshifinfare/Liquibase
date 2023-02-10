-- liquibase formatted sql

-- changeset ningz:ledger-billing_cycle_config
create table ledger.ledger.billing_cycle_config
(
    billing_cycle_config_id   int auto_increment
        primary key,
    billing_cycle_config_uuid varchar(36)                                             null,
    entity_uuid               varchar(36)                                             null,
    entity_type               enum ('ORG', 'INDIVIDUAL') default 'ORG'                null,
    due_date                  timestamp(6)                                            null,
    status                    enum ('ACTIVE', 'INACTIVE', 'TERMINATED')               null,
    paid_amount               decimal(14, 4)                                          null,
    latest_statement_uuid     varchar(36)                                             null,
    create_date               timestamp(6)               default CURRENT_TIMESTAMP(6) null,
    change_date               timestamp(6)               default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6)
);


-- rollback DROP TABLE ledger.billing_cycle_config