# Project Guidelines & Agent Instructions

## Snowflake Configuration
- **Database:** `DEMO_DB`
- **Schema:** `TPCH_TRANSFORMED`
- **Warehouse:** `DEMO_WH`

## dbt Build Commands
- **Full project build:** `dbt build`
- **Single model build:** `dbt build --select <model_name>`

## Modeling & Naming Conventions
- Model files must use `snake_case` naming (e.g., `stg_orders.sql`, `fct_customer_orders.sql`).
- **Source Data:** The raw source data is `TPCH_SF1` in `SNOWFLAKE_SAMPLE_DATA`.
- **Source Referencing:** All raw tables must be referenced through `_sources.yml` using `{{ source('source_name', 'table_name') }}` and never queried as hardcoded table names directly.

## Git & Workflow Conventions
- **Feature Branches:** Use the naming pattern `feature/<description>` (e.g., `feature/add-stg-orders`).
- **Pull Requests:** PRs are required before merging into `main`.

## Tooling & Environment
- This project uses **CoCo Desktop**.
- Do **not** use the `cortex` CLI command.
