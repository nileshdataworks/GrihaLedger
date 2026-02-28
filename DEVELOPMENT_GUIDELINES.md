# Development Guidelines

This document defines engineering discipline for this project.
The goal is to maintain professional standards from day one.

---

## 1. Branch Strategy (Phase 1 – March 2026)

- Single branch: `main`
- `main` must always remain runnable.
- No broken commits.
- No half-written features committed.

Dev branch will be introduced in Phase 2 when:
- Real user data is active
- Risky refactors begin
- dbt/Airflow are introduced

---

## 2. Commit Message Format (Conventional Commits)

All commits must follow:

    <type>: <short clear description>

### Allowed Types

- feat      → New feature
- fix       → Bug fix
- docs      → Documentation changes only
- refactor  → Code restructuring without behavior change
- test      → Adding or modifying tests
- chore     → Maintenance tasks

### Examples

    feat: create households table
    feat: implement transaction service
    fix: correct foreign key constraint
    docs: log postgres PATH resolution
    refactor: extract balance update logic
    test: add unit tests for visibility rules
    chore: initialize project structure

Never use vague messages like:
    update
    changes
    done
    final

---

## 3. Commit Discipline Rules

- Small commits.
- Minimum 3 commits per week.
- Commit only when code runs.
- Test locally before pushing.

---

## 4. Execution Tracking

Time tracking is maintained in a separate Google Sheet.

Rules:
- Log every day (even 0 hours).
- 3 consecutive missed days → mandatory review.
- Weekly seriousness score calculated.

---

## 5. Professional Standards

- No committing secrets.
- No committing database dumps.
- No committing virtual environments.
- .gitignore must be respected.
- Code must remain readable and structured.

---

## 6. Definition of Runnable

The system is considered runnable if:
- Python executes without syntax errors.
- Database connection works.
- No immediate runtime crash.

---

This document evolves as the project scales.