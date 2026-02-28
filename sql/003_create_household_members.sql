/*
--------------------------------------------------
File: 003_create_household_members.sql
Purpose: Create bridge table between users and households
--------------------------------------------------
DATE        | Author          | Description
--------------------------------------------------
2026-02-28  | Nilesh Rawool   | Initial creation
--------------------------------------------------
*/

CREATE TABLE raw.household_members (
    id SERIAL PRIMARY KEY,
    household_id INT NOT NULL
        REFERENCES raw.households(id)
        ON DELETE CASCADE,
    user_id INT NOT NULL
        REFERENCES raw.users(id)
        ON DELETE CASCADE,
    role VARCHAR(20) NOT NULL
        CHECK (role IN ('admin','member','viewer')),
    joined_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE (household_id, user_id)
);