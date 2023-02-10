-- liquibase formatted sql

-- changeset ningz:financial_ledger-codat
create table financial_ledger.financial_ledger.codat
(
    transaction_uuid  varchar(36)                               not null,
    charge_type       tinyint(1)   default 0                    not null,
    gl_code           int                                       null,
    chart_of_account  varchar(255)                              null,
    posted_date       datetime                                  null,
    description       varchar(255)                              null,
    net_amount        decimal(14, 4)                            null,
    marked_ready      tinyint(1)                                null,
    codat_push_id     varchar(36)                               null,
    tracking_category varchar(55)                               null,
    created_date      timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date       timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    org_uuid          varchar(36)                               null,
    primary key (transaction_uuid, charge_type)
);


-- rollback DROP TABLE financial_ledger.codat