-- liquibase formatted sql

-- changeset ningz:application_ledger-receipt
create table application_ledger.application_ledger.receipt
(
    receipt_id            int auto_increment,
    time                  timestamp(6)  null,
    bucket_name           varchar(255)  null,
    file_name             varchar(256)  null,
    thumbnail_bucket_name varchar(64)   null,
    file_extension        varchar(45)   null,
    file_size             int           null,
    file_original_name    varchar(255)  null,
    result                double        null,
    version               int default 1 null,
    transaction_id        int           not null,
    org_id                int           not null,
    user_id               int           not null,
    card_id               int           not null,
    primary key (receipt_id, transaction_id, org_id, user_id, card_id)
);


-- rollback DROP TABLE application_ledger.receipt