-- Runs once when the warehouse volume is first created.
-- One schema per layer, each written by one tool: raw (Python loader), staging + marts (dbt).
CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS marts;
