-- liquibase formatted sql
-- changeset ningz:business_identity
CREATE SCHEMA IF NOT EXISTS business_identity DEFAULT CHARACTER SET utf8 COLLATE utf8_bin
-- rollback DROP SCHEMA IF EXISTS business_identity;