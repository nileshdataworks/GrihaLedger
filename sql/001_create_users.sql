/*
--------------------------------------------------
File: 001_create_users.sql
Purpose: Create users table in raw schema
--------------------------------------------------
DATE        | Author          | Description
--------------------------------------------------
2026-02-28  | Nilesh Rawool   | Initial creation
--------------------------------------------------
*/

CREATE TABLE raw.users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);