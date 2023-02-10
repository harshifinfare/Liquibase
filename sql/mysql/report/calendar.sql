-- liquibase formatted sql

-- changeset ningz:report-calendar
create table report.report.calendar
(
    calendar_date date not null,
    primary key (calendar_date)
);


-- rollback DROP TABLE report.calendar