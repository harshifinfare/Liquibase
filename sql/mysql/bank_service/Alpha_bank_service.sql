-- liquibase formatted sql
-- changeset ningz:bank_service
CREATE SCHEMA IF NOT EXISTS bank_service DEFAULT CHARACTER SET utf8 COLLATE utf8_bin
-- rollback DROP SCHEMA IF EXISTS bank_service;