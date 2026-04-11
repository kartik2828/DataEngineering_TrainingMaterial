# 📊 Data Engineering Training Material

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Status](https://img.shields.io/badge/status-active-brightgreen.svg)
![Audience](https://img.shields.io/badge/audience-beginner%20to%20intermediate-orange.svg)
![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)
![Stages](https://img.shields.io/badge/stages-7-purple.svg)

> A structured, hands-on training curriculum for aspiring data engineers — from foundational Python & SQL to production-grade pipelines with Airflow, Spark, dbt, and cloud platforms.

[![⭐ Star on GitHub](https://img.shields.io/github/stars/kartik2828/DataEngineering_TrainingMaterial?style=social)](https://github.com/kartik2828/DataEngineering_TrainingMaterial)
&nbsp;
[🍴 Fork](https://github.com/kartik2828/DataEngineering_TrainingMaterial/fork)
&nbsp;
[🐛 Issues](https://github.com/kartik2828/DataEngineering_TrainingMaterial/issues)

---

## 📋 Table of Contents

| # | Section |
|---|---------|
| 1 | [Project Description](#1--project-description) |
| 2 | [Target Audience](#2--target-audience) |
| 3 | [Data Engineer Roadmap](#3-️-data-engineer-roadmap) |
| 4 | [Repository Structure](#4--repository-structure) |
| 5 | [How to Use This Repository](#5--how-to-use-this-repository) |
| 6 | [Learning Path & Milestones](#6--learning-path--milestones) |
| 7 | [Hands-On Projects](#7-️-hands-on-projects) |
| 8 | [Recommended Resources](#8--recommended-resources) |
| 9 | [Quick-Start Setup](#9--quick-start-setup) |
| 10 | [Contribution Guidelines](#10--contribution-guidelines) |
| 11 | [FAQ](#11--faq) |

---

## 1 📌 Project Description

**DataEngineering_TrainingMaterial** is an open-source learning repository designed to guide you from zero to job-ready as a data engineer. It provides structured notes, runnable code samples, exercises, and project templates covering the full data engineering stack.

Whether you're transitioning from software development, analytics, or starting fresh, this repository gives you a clear, progressive learning path grounded in real-world tools and patterns.

---

## 2 🎯 Target Audience

| Level | Who This Is For |
|-------|----------------|
| 🌱 **Beginner** | Students or professionals new to data engineering. Some Python/SQL familiarity helpful but not required. |
| 🔧 **Intermediate** | Developers who know the basics and want to deepen skills in orchestration, cloud storage, or distributed processing. |
| 🔄 **Career Switchers** | Analysts, backend engineers, or DevOps professionals pivoting into the data engineering space. |

---

## 3 🗺️ Data Engineer Roadmap

> Click each stage to expand tools, concepts, and skills.

<details>
<summary><strong>🧱 Stage 1 — Foundations</strong></summary>

Core programming, data formats, and environment setup that underpin every subsequent stage. Start here regardless of experience level.

**Tools & Technologies:**
`Python` `pandas` `NumPy` `SQL` `Bash` `Git` `CSV` `JSON` `Parquet` `Avro`

**What you'll learn:**
- Python for data engineering (pandas, NumPy, file I/O)
- SQL fundamentals and advanced querying (window functions, CTEs)
- Linux/Bash scripting and command-line fluency
- Git & version control workflows
- Data formats: CSV, JSON, Parquet, Avro, ORC

</details>

<details>
<summary><strong>🚰 Stage 2 — Data Ingestion</strong></summary>

Techniques to reliably move data from source systems into your pipeline — batch files, streaming events, and API extraction.

**Tools & Technologies:**
`Apache Kafka` `AWS Kinesis` `Airbyte` `Fivetran` `REST APIs` `Scrapy` `CDC`

**What you'll learn:**
- Batch vs. streaming ingestion patterns
- REST API consumption and pagination strategies
- Web scraping (requests, BeautifulSoup, Scrapy)
- Database change data capture (CDC)
- Tools: Apache Kafka, AWS Kinesis, Airbyte, Fivetran

</details>

<details>
<summary><strong>🗄️ Stage 3 — Storage</strong></summary>

Understanding where and how data lives at each layer — relational DBs, NoSQL, cloud object stores, warehouses, and lakehouses.

**Tools & Technologies:**
`PostgreSQL` `MongoDB` `DynamoDB` `AWS S3` `BigQuery` `Snowflake` `Delta Lake` `Iceberg`

**What you'll learn:**
- Relational databases: PostgreSQL, MySQL
- NoSQL databases: MongoDB, Cassandra, DynamoDB
- Cloud object storage: AWS S3, GCP GCS, Azure Blob
- Data warehouses: BigQuery, Snowflake, Redshift
- Data lake and lakehouse architecture (Delta Lake, Apache Iceberg)

</details>

<details>
<summary><strong>⚙️ Stage 4 — Data Processing</strong></summary>

Transforming raw data into clean, analytics-ready formats using distributed processing frameworks and SQL-based transformation tools.

**Tools & Technologies:**
`PySpark` `Spark SQL` `dbt` `Spark Streaming` `Apache Flink` `ETL` `ELT`

**What you'll learn:**
- ETL vs. ELT patterns
- Spark fundamentals (PySpark DataFrames, Spark SQL)
- dbt for SQL-based transformations
- Data cleaning and deduplication techniques
- Batch processing vs. stream processing (Spark Streaming, Flink)

</details>

<details>
<summary><strong>🎼 Stage 5 — Orchestration</strong></summary>

Scheduling, monitoring, and managing complex multi-step pipelines with error handling, retries, and alerting built in.

**Tools & Technologies:**
`Apache Airflow` `Prefect` `Dagster` `DAGs` `GitHub Actions` `CI/CD`

**What you'll learn:**
- DAG-based workflow concepts
- Apache Airflow: DAGs, operators, sensors, hooks
- Prefect and Dagster as modern alternatives
- Error handling, retries, and alerting
- CI/CD for data pipelines

</details>

<details>
<summary><strong>✅ Stage 6 — Data Quality</strong></summary>

Ensuring your data is accurate, complete, and trustworthy at every stage through validation, cataloging, and anomaly detection.

**Tools & Technologies:**
`Great Expectations` `Soda Core` `Data Contracts` `Apache Atlas` `DataHub` `Schema Registry`

**What you'll learn:**
- Data validation frameworks: Great Expectations, Soda Core
- Schema evolution and enforcement
- Data contracts and SLAs
- Monitoring and anomaly detection
- Metadata management and data cataloging (Apache Atlas, DataHub)

</details>

<details>
<summary><strong>🛠️ Stage 7 — Tooling & Cloud</strong></summary>

Production-grade cloud platforms, infrastructure as code, and observability tooling used in real data engineering roles.

**Tools & Technologies:**
`Docker` `Kubernetes` `Terraform` `AWS` `GCP` `Azure` `Observability`

**What you'll learn:**
- Docker and containerization for data workloads
- Kubernetes basics for orchestration at scale
- Cloud platforms: AWS, GCP, Azure (IaC with Terraform)
- Infrastructure as Code and environment reproducibility
- Observability: logging, metrics, and tracing for data systems

</details>

---

## 4 📁 Repository Structure

```
DataEngineering_TrainingMaterial/
│
├── 📂 01_Foundations/              # Python, SQL, Bash, data formats
│   ├── python/
│   ├── sql/
│   ├── bash/
│   └── data_formats/
│
├── 📂 02_Data_Ingestion/           # Batch, streaming, API extraction
│   ├── batch/
│   ├── streaming/
│   └── api_ingestion/
│
├── 📂 03_Storage/                  # Relational, NoSQL, cloud, warehouses
│   ├── relational/
│   ├── nosql/
│   ├── cloud_storage/
│   └── data_warehouse/
│
├── 📂 04_Processing/               # PySpark, dbt, streaming transforms
│   ├── pyspark/
│   ├── dbt/
│   └── streaming/
│
├── 📂 05_Orchestration/            # Airflow DAGs, Prefect, CI/CD
│   ├── airflow/
│   ├── prefect/
│   └── ci_cd/
│
├── 📂 06_Data_Quality/             # Great Expectations, Soda, monitoring
│   ├── great_expectations/
│   ├── soda/
│   └── monitoring/
│
├── 📂 07_Tooling/                  # Docker, Terraform, Kubernetes
│   ├── docker/
│   ├── terraform/
│   └── kubernetes/
│
├── 📂 projects/                    # Capstone project templates
├── 📂 resources/                   # Reading lists and cheat sheets
├── 📂 scripts/                     # Helper and setup scripts
├── .env.example                    # Sample environment variable template
├── requirements.txt                # Python dependencies
└── README.md
```

> **Each folder contains:** Markdown notes · Runnable scripts · Exercises with hints · Reference links

---

## 5 🧭 How to Use This Repository

| Your Profile | Suggested Approach |
|---|---|
| 🌱 New to Data Engineering | Work stage-by-stage from **01 → 07**. Each stage builds on the previous one. |
| 🔧 Have Some Experience | Jump directly to the folder that fills your knowledge gap. |
| 🚀 Want a Portfolio | Head to `projects/` and build an end-to-end pipeline from day one. |

**Tips for getting the most out of this repo:**
- Don't just read — run the code, break it, and fix it
- Keep a personal notes file alongside each module
- Commit your exercise solutions to your own fork to build a GitHub portfolio
- Open issues if something is unclear — community feedback improves the material

---

## 6 🏁 Learning Path & Milestones

Use these checkpoints to track your progress:

<details>
<summary><strong>☐ Milestone 1 — Foundations Complete</strong></summary>

- Write a Python script that reads a CSV, transforms it, and writes Parquet
- Write 10 SQL queries using JOINs, CTEs, and window functions
- Set up Git and push your first exercise to GitHub

</details>

<details>
<summary><strong>☐ Milestone 2 — Ingest Data from an External Source</strong></summary>

- Pull data from a public REST API and land it in a local database
- Produce and consume messages with a local Kafka setup

</details>

<details>
<summary><strong>☐ Milestone 3 — Build a Storage Layer</strong></summary>

- Design a star schema in PostgreSQL for a sample dataset
- Upload a Parquet file to S3/GCS and query it with Athena or BigQuery

</details>

<details>
<summary><strong>☐ Milestone 4 — Transform Data with dbt or PySpark</strong></summary>

- Build a dbt project with at least 3 models and 5 tests
- Run a PySpark job that cleans and aggregates a large dataset

</details>

<details>
<summary><strong>☐ Milestone 5 — Orchestrate a Multi-Step Pipeline</strong></summary>

- Build an Airflow DAG that ingests, transforms, and loads data end-to-end
- Add error handling, retries, and a Slack alert on failure

</details>

<details>
<summary><strong>☐ Milestone 6 — Add Data Quality Checks</strong></summary>

- Write Great Expectations suites for a dataset and integrate with your DAG
- Document your data with a basic data catalog entry

</details>

<details>
<summary><strong>☐ Milestone 7 — Deploy in a Containerized Environment</strong></summary>

- Dockerize your pipeline and run it with docker-compose
- Write a Terraform script to provision a cloud storage bucket

</details>

---

## 7 🛠️ Hands-On Projects

Each project is mapped to roadmap stages and designed to be portfolio-worthy.

---

### 🗃️ Project 01 — CSV to Data Warehouse Pipeline
![Stage 1](https://img.shields.io/badge/Stage-1%20Foundations-7F77DD)
![Stage 2](https://img.shields.io/badge/Stage-2%20Ingestion-378ADD)
![Stage 3](https://img.shields.io/badge/Stage-3%20Storage-639922)

Ingest a public CSV dataset (e.g. NYC Taxi data), clean it with Python/pandas, and load it into a PostgreSQL data warehouse. Build a simple star schema with dimension and fact tables.

**Skills:** `Python` `pandas` `PostgreSQL` `ETL`

---

### 🌐 Project 02 — REST API Ingestion Pipeline
![Stage 2](https://img.shields.io/badge/Stage-2%20Ingestion-378ADD)
![Stage 3](https://img.shields.io/badge/Stage-3%20Storage-639922)

Pull data from a public API (OpenWeatherMap, GitHub API), store raw JSON in S3/GCS, and transform it into a queryable format in a cloud data warehouse.

**Skills:** `REST APIs` `S3/GCS` `ELT` `BigQuery`

---

### 🌊 Project 03 — Streaming Event Pipeline
![Stage 2](https://img.shields.io/badge/Stage-2%20Ingestion-378ADD)
![Stage 4](https://img.shields.io/badge/Stage-4%20Processing-BA7517)

Simulate a stream of user events using a Kafka producer. Build a Kafka consumer that processes events in real time and writes aggregates to a database.

**Skills:** `Kafka` `PySpark Streaming` `Real-time`

---

### 📊 Project 04 — dbt Analytics Project
![Stage 4](https://img.shields.io/badge/Stage-4%20Processing-BA7517)

Take a raw dataset loaded into BigQuery or Snowflake and build a full dbt project: staging models, intermediate models, a final mart, tests, and documentation.

**Skills:** `dbt` `SQL` `Data Modeling` `Docs`

---

### 🎼 Project 05 — Orchestrated End-to-End Pipeline
![Stage 2](https://img.shields.io/badge/Stage-2%20Ingestion-378ADD)
![Stage 4](https://img.shields.io/badge/Stage-4%20Processing-BA7517)
![Stage 5](https://img.shields.io/badge/Stage-5%20Orchestration-D85A30)
![Stage 6](https://img.shields.io/badge/Stage-6%20Quality-1D9E75)

Build a production-style Airflow DAG that ingests from an API, lands in cloud storage, triggers dbt transforms, and runs Great Expectations data quality checks. Add alerting on failure.

**Skills:** `Airflow` `dbt` `Great Expectations` `Alerts`

---

### 🐳 Project 06 — Dockerized Pipeline with CI/CD
![Stage 5](https://img.shields.io/badge/Stage-5%20Orchestration-D85A30)
![Stage 7](https://img.shields.io/badge/Stage-7%20Tooling-D4537E)

Take a working pipeline and containerize it with Docker. Write a GitHub Actions workflow that runs tests and deploys the pipeline on merge to main.

**Skills:** `Docker` `GitHub Actions` `CI/CD` `IaC`

---



## 9 ⚡ Quick-Start Setup

### Prerequisites

- Python 3.9+
- Git
- Docker & Docker Compose
- A cloud account (AWS, GCP, or Azure) — free tier is sufficient for most exercises

### Installation

**Step 1 — Fork & Clone**
```bash
git clone https://github.com/<your-username>/DataEngineering_TrainingMaterial.git
cd DataEngineering_TrainingMaterial
```

**Step 2 — Create a virtual environment**
```bash
python -m venv venv
source venv/bin/activate        # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

**Step 3 — Configure environment variables**
```bash
cp .env.example .env
# Edit .env with your DB credentials, cloud keys, etc.
```

**Step 4 — Start local services with Docker**
```bash
docker-compose up -d
# Starts Postgres, Kafka, and Airflow locally
```

**Step 5 — Verify setup & run first exercise**
```bash
python scripts/verify_setup.py

# Navigate to the Foundations module and run sample ETL
cd 01_Foundations/python/
python etl_sample.py

# Or open a notebook
jupyter notebook exercises.ipynb
```

---

## 10 🤝 Contribution Guidelines

Contributions are warmly welcome! Here's how to get involved:

### How to Contribute

```bash
# 1. Fork the repo and create a feature branch
git checkout -b feature/add-kafka-exercise

# 2. Make your changes, then test
python -m pytest

# 3. Format Python code
black .

# 4. Push and open a Pull Request
git push origin feature/add-kafka-exercise
```

### What We Welcome

| Type | Examples |
|------|----------|
| 🧪 New exercises | Additional SQL challenges, PySpark problems |
| 🐛 Bug fixes | Broken scripts, incorrect explanations |
| 📝 Improved notes | Clearer Markdown explanations, better examples |
| 🚀 Project templates | New end-to-end project ideas |
| 📚 Resources | Books, courses, tools worth adding |

### Code Style

- **Python:** follow PEP 8; use `black` for formatting
- **SQL:** use uppercase for keywords; add comments on complex queries
- **Notebooks:** clear all outputs before committing

> Found a bug or unclear explanation? [Open an issue](https://github.com/kartik2828/DataEngineering_TrainingMaterial/issues) with the stage, the file, and what you expected vs. what happened.

---

## 11 ❓ FAQ

<details>
<summary><strong>Do I need a cloud account to use this repo?</strong></summary>

Most exercises can be run entirely locally using Docker. Cloud-specific exercises (S3, BigQuery, etc.) require a free-tier account, and instructions are provided to minimize cost.

</details>

<details>
<summary><strong>What if I have no Python experience?</strong></summary>

Start with the `01_Foundations/python/` folder. A basic Python tutorial is included. You'll need at least beginner-level Python to get the most out of stages 2 and beyond.

</details>

<details>
<summary><strong>How long does it take to complete the full curriculum?</strong></summary>

It depends on your pace and background. A typical learner dedicating 10–15 hours per week can work through all seven stages in 3–5 months. The projects add additional time but are the most valuable part.

</details>

<details>
<summary><strong>Are the projects suitable for a portfolio?</strong></summary>

Yes. The projects in `projects/` are designed to be end-to-end and deployable, making them solid portfolio additions for job applications.

</details>

<details>
<summary><strong>Can I use this material for a bootcamp or course?</strong></summary>

Absolutely — the MIT license permits educational use. If you build something on top of this, a shout-out or link back is appreciated but not required.

</details>

<details>
<summary><strong>I found an error in the notes — what should I do?</strong></summary>

Please open an issue or submit a pull request. Accuracy matters, and community feedback is what keeps this resource trustworthy.

</details>

---

---

<div align="center">

Built with ❤️ for the data engineering community

[⭐ Star on GitHub](https://github.com/kartik2828/DataEngineering_TrainingMaterial) · [🍴 Fork](https://github.com/kartik2828/DataEngineering_TrainingMaterial/fork) · [🐛 Report Issue](https://github.com/kartik2828/DataEngineering_TrainingMaterial/issues)

</div>
