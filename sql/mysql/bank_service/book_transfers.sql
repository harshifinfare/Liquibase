-- liquibase formatted sql

-- changeset ningz:bank_service-book_transfers
create table bank_service.bank_service.book_transfers
(
    book_transfer_uuid           varchar(36)                               not null,
    amount                       int                                       null,
    trace_number                 varchar(45)                               null,
    status                       varchar(45)                               null,
    debit_master_account_number  varchar(45)                               null,
    debit_sub_account_number     varchar(45)                               null,
    credit_master_account_number varchar(45)                               null,
    credit_sub_account_number    varchar(45)                               null,
    proposed_at                  datetime                                  null,
    executed_at                  datetime                                  null,
    created_by_uuid              varchar(36)                               null,
    create_date                  timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date                  timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (book_transfer_uuid)
);


-- rollback DROP TABLE bank_service.book_transfers