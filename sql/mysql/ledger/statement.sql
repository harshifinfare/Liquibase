-- liquibase formatted sql

-- changeset ningz:ledger-statement
create table ledger.ledger.statement
(
    statement_uuid     varchar(36)                                             not null,
    entity_uuid        varchar(36)                                             null,
    entity_type        enum ('ORG', 'INDIVIDUAL') default 'ORG'                null,
    balance            decimal(14, 4)                                          null,
    bucket_name        varchar(64)                                             null,
    file_name          varchar(256)                                            null,
    due_date           timestamp(6)                                            null,
    peach_statement_id varchar(45)                                             null,
    start_date         timestamp(6)                                            null,
    close_date         timestamp(6)                                            null,
    create_date        timestamp(6)               default CURRENT_TIMESTAMP(6) null,
    change_date        timestamp(6)               default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (statement_uuid)
);


-- rollback DROP TABLE ledger.statement