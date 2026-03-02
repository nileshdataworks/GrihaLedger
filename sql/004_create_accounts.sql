/*
--------------------------------------------------
File: 004_create_accounts.sql
Purpose: Create user-owned financial accounts table
--------------------------------------------------
DATE        | Author          | Description
--------------------------------------------------
2026-03-02  | Nilesh Rawool   | Initial creation
--------------------------------------------------
*/

CREATE TABLE raw.accounts (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL
        REFERENCES raw.users(id)
        ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL,
    account_type VARCHAR(20) NOT NULL
        CHECK (account_type IN ('savings','credit','cash','loan','investment')),
    created_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (user_id, name)
);