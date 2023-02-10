-- liquibase formatted sql

-- changeset ningz:configuration-version
create table configuration.configuration.version
(
    id       int auto_increment
        primary key,
    version  varchar(45)                         not null,
    major    int                                 null,
    minor    int                                 null,
    revision int                                 null,
    date     timestamp default CURRENT_TIMESTAMP null
);


-- rollback DROP TABLE configuration.version