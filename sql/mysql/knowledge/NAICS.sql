-- liquibase formatted sql

-- changeset ningz:knowledge-NAICS
create table knowledge.knowledge.NAICS
(
    NAICS_code varchar(12)  not null,
    title      varchar(90)  not null,
    subtitle   varchar(120) not null,
    detail     longtext     null,
    comparable varchar(1)   null,
    primary key (NAICS_code)
);


-- rollback DROP TABLE knowledge.NAICS