-- liquibase formatted sql

-- changeset ningz:ledger-peach_draw
create table ledger.ledger.peach_draw
(
    card_uuid   varchar(36)                               not null,
    draw_id     varchar(36)                               null,
    draw_status varchar(16)                               null,
    create_date timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (card_uuid)
);


-- rollback DROP TABLE ledger.peach_draw