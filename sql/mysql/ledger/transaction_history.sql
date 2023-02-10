-- liquibase formatted sql

-- changeset ningz:ledger-transaction_history
create table ledger.ledger.transaction_history
(
    identifier                        varchar(255)                              not null,
    transaction_id                    int                                       not null,
    token                             varchar(255)                              not null,
    amount                            decimal(14, 4)                            not null,
    transaction_time                  timestamp                                 null,
    state                             varchar(10)                               not null,
    type                              varchar(64)                               not null,
    currency_code                     varchar(7)                                null,
    approval_code                     varchar(255)                              null,
    memo                              varchar(255)                              null,
    network                           varchar(10)                               null,
    acceptor_mid                      varchar(255)                              null,
    acceptor_mcc                      varchar(5)                                null,
    acceptor_network_mid              varchar(255)                              null,
    acceptor_name                     varchar(255)                              null,
    acceptor_address                  varchar(255)                              null,
    acceptor_city                     varchar(40)                               null,
    acceptor_state                    varchar(2)                                null,
    acceptor_zip                      varchar(255)                              null,
    acceptor_country                  varchar(4)                                null,
    acceptor_partial_approval_capable varchar(10)  default '1'                  null,
    is_recurring                      tinyint(1)   default 0                    null,
    is_installment                    tinyint(1)   default 0                    null,
    duration                          int          default 0                    null,
    peach_purchase                    blob                                      null,
    peach_succeeded                   tinyint(1)                                null,
    create_date                       timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date                       timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    org_uuid                          varchar(36)                               null,
    user_uuid                         varchar(36)                               null,
    card_uuid                         varchar(36)                               null,
    primary key (identifier, token, transaction_id),
    constraint identifier_UNIQUE
        unique (identifier),
    constraint token_UNIQUE
        unique (token)
);

create index date_index
    on ledger.transaction_history (create_date, change_date);


-- rollback DROP TABLE ledger.transaction_history