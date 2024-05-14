# Data Pipeline with dbt, Snowflake, and Airflow

This project implements a data pipeline using industry-standard tools such as dbt, Snowflake, and Airflow. It facilitates the extraction, loading, and transformation (ELT) process of data, enabling analytics and reporting within the organization.

## Project Overview

- **Tools Used:**
  - **Snowflake:** Cloud-based data warehousing platform.
  - **dbt (Data Build Tool):** SQL-based transformation and modeling tool.
  - **Airflow:** Workflow orchestration platform.

- **Data Modeling Techniques:**
  - Fact tables, data marts.
  - Snowflake Role-Based Access Control (RBAC) concepts.

## Setup Instructions

1. **Snowflake Environment Setup:**
   - Create Snowflake accounts, warehouse, database, and roles.
   - Define necessary schemas for staging and modeling.

2. **Configuration:**
   - Update `dbt_profile.yaml` with Snowflake connection details.
   - Configure source and staging files in the `models/staging` directory.
   - Define macros in `macros/pricing.sql` for reusable calculations.
   - Configure generic and singular tests for data quality.

3. **Airflow Deployment:**
   - Update Dockerfile and requirements.txt for Airflow deployment.
   - Add Snowflake connection details in Airflow UI.
   - Create a DAG file (`dbt_dag.py`) to orchestrate dbt jobs.

## File Structure

- `models/`: Contains dbt models for staging, intermediate tables, and fact tables.
- `macros/`: Contains reusable SQL macros for calculations.
- `tests/`: Contains SQL scripts for generic and singular tests.
- `dbt_dag.py`: Airflow DAG configuration file.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/your_username/data-pipeline.git
  
2. Set up Snowflake environment and configure necessary files.

3. Deploy Airflow with Docker and configure connections.

4. Start the Airflow scheduler and webserver:
   
  ```bash
  docker-compose up -d
  ```
5. Access Airflow UI and trigger the dbt_dag DAG for execution.




