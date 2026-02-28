# GrihaLedger – Data Dictionary

---

## Table: raw.users

**Grain:** 1 row = 1 global user

| Column | Type | Description | Constraints |
|--------|------|------------|------------|
| id | SERIAL | Surrogate primary key | PK |
| email | VARCHAR(255) | User email address | UNIQUE, NOT NULL |
| full_name | VARCHAR(100) | Display name | NOT NULL |
| created_at | TIMESTAMPTZ | Record creation timestamp | DEFAULT NOW() |

---

## Table: raw.households

**Grain:** 1 row = 1 household (tenant)

| Column | Type | Description | Constraints |
|--------|------|------------|------------|
| id | SERIAL | Surrogate primary key | PK |
| name | VARCHAR(100) | Household name | NOT NULL |
| created_at | TIMESTAMPTZ | Record creation timestamp | DEFAULT NOW() |

---

## Table: raw.household_members

**Grain:** 1 row = 1 user membership in 1 household

| Column | Type | Description | Constraints |
|--------|------|------------|------------|
| id | SERIAL | Surrogate primary key | PK |
| household_id | INT | References households.id | FK |
| user_id | INT | References users.id | FK |
| role | VARCHAR(20) | Role within household | CHECK ('admin','member','viewer') |
| joined_at | TIMESTAMPTZ | Membership timestamp | DEFAULT NOW() |
| (household_id, user_id) | — | Prevent duplicate membership | UNIQUE |