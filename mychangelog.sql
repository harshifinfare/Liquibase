-- liquibase formatted sql

-- changeset hsingh:onboarding-liquibase
create table liquibase_update
(
    id                    int auto_increment primary key,
    change_date                timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    author             varchar(20)                               null
);

--rollback drop table liquibase_update
--changeset hsingh:test
--rollback DROP TABLE yourname;
CREATE TABLE yourname (
    id int primary key,
    name varchar(50) not null
)