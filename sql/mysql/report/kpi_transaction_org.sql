-- liquibase formatted sql

-- changeset ningz:report-kpi_transaction_org
create table report.report.kpi_transaction_org
(
    org_id           int              not null,
    date             date             not null,
    num              int    default 0 null,
    amount           double default 0 null,
    business_name    varchar(200)     null,
    org_credit_limit double default 0 null,
    primary key (org_id, date)
);


-- rollback DROP TABLE report.kpi_transaction_org