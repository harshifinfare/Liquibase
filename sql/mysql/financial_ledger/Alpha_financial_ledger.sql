-- liquibase formatted sql
-- changeset ningz:financial_ledger
CREATE SCHEMA IF NOT EXISTS financial_ledger DEFAULT CHARACTER SET utf8 COLLATE utf8_bin
-- rollback DROP SCHEMA IF EXISTS financial_ledger;