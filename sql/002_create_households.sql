/*
--------------------------------------------------
File: 002_create_households.sql
Purpose: Create households table in raw schema
--------------------------------------------------
DATE        | Author          | Description
--------------------------------------------------
2026-02-28  | Nilesh Rawool   | Initial creation
--------------------------------------------------
*/

CREATE TABLE raw.households (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);