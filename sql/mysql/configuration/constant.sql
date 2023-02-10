-- liquibase formatted sql

-- changeset ningz:configuration-constant
create table configuration.configuration.constant
(
    constant_name        varchar(45)                               not null,
    constant_value       longtext                                  null,
    constant_description longtext                                  null,
    create_date          timestamp(6) default CURRENT_TIMESTAMP(6) null,
    change_date          timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    primary key (constant_name)
);


-- rollback DROP TABLE configuration.constant