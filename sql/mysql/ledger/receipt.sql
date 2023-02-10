-- liquibase formatted sql

-- changeset ningz:ledger-receipt
create table ledger.ledger.receipt
(
    receipt_uuid          varchar(36)   not null,
    time                  timestamp(6)  null,
    bucket_name           varchar(64)   null,
    file_name             varchar(256)  null,
    thumbnail_bucket_name varchar(64)   null,
    file_extension        varchar(45)   null,
    file_size             int           null,
    file_original_name    varchar(255)  null,
    result                double        null,
    version               int default 1 null,
    primary key (receipt_uuid)
);


-- rollback DROP TABLE ledger.receipt