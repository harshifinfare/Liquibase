-- liquibase formatted sql
-- changeset ningz:ledger
CREATE SCHEMA IF NOT EXISTS ledger DEFAULT CHARACTER SET utf8 COLLATE utf8_bin
-- rollback DROP SCHEMA IF EXISTS ledger;