-- liquibase formatted sql
-- changeset ningz:configuration
CREATE SCHEMA IF NOT EXISTS configuration DEFAULT CHARACTER SET utf8 COLLATE utf8_bin
-- rollback DROP SCHEMA IF EXISTS configuration;