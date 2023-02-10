-- liquibase formatted sql

-- changeset ningz:ledger-peach_borrower
create table ledger.ledger.peach_borrower
(
    org_uuid    varchar(36)                               not null,
    person_id   varchar(36)                               null,
    contact_id  varchar(36)                               null,
    loan_id     varchar(36)                               null,
    loan_status varchar(36)                               null,
    create_date timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (org_uuid)
);


-- rollback DROP TABLE ledger.peach_borrower