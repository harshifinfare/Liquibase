-- liquibase formatted sql

-- changeset ningz:risk_monitoring-risk_monitoring
create table risk_monitoring.risk_monitoring.risk_monitoring
(
    risk_monitoring_id int auto_increment
        primary key,
    vendor             varchar(20)                               null,
    entity_uuid        varchar(36)                               null,
    entity_type        varchar(20)                               null,
    operation_type     varchar(20)                               null,
    status             varchar(20)                               null,
    message            json                                      null,
    response           json                                      null,
    reason             varchar(400)                              null,
    session_key        varchar(36)                               null,
    change_date        timestamp(6) default CURRENT_TIMESTAMP(6) null on update CURRENT_TIMESTAMP(6),
    create_date        timestamp(6) default CURRENT_TIMESTAMP(6) null
);


-- rollback DROP TABLE risk_monitoring.risk_monitoring