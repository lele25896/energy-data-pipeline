# Energy Data Pipeline

Hourly electricity demand for the PJM grid (EIA API) → Postgres → dbt → Power BI, orchestrated with Airflow.

> Work in progress. Phase 0: local stack.

## Run locally

Requires Docker.

```bash
cp .env.example .env   # fill in the values
docker compose up -d
```

- Airflow UI: http://localhost:8080 (local dev, no login)
- Warehouse: `postgresql://warehouse:<WAREHOUSE_PASSWORD>@localhost:5432/warehouse`, schemas `raw`, `staging`, `marts`

```bash
docker compose exec warehouse psql -U warehouse -c "\dn"
docker compose down        # stop, keep data
docker compose down -v     # stop and delete all data
```
