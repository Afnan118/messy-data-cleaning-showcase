# Messy Data Cleaning Showcase

## Project Overview

This project demonstrates a practical data cleaning workflow using a messy employee pay equity dataset. The goal is to identify data quality issues, clean and standardize employee data, document cleaning decisions, and validate the results using SQL.

The project showcases data cleaning and auditing skills using Excel Power Query and SQL.

## Tools Used

- **Microsoft Excel / Power Query** — Data cleaning and transformation
- **SQL / SQLite** — Data quality audits and validation
- **GitHub** — Project documentation and version control

## Dataset

The dataset contains synthetic employee records designed for data cleaning and pay equity analysis practice.

- **Original dataset:** 96,900 employee records
- **Number of columns:** 20
- **Data quality issues:** Missing values, inconsistent text formatting, data type inconsistencies, and salary-formatting issues

## Dataset Source and License

- **Source:** [Employee Pay Equity Dataset — Kaggle](https://www.kaggle.com/datasets/terencekatua/employee-pay-equity-dataset)
- **Creator:** terencekatua
- **Dataset license:** CC0: Public Domain
- **Data type:** Synthetic employee records intended for practice and analysis

The raw CSV file is not currently included in this GitHub repository.

## Project Workflow

### 1. Data Quality Assessment

Reviewed the dataset to identify missing values, inconsistent text formats, data type issues, potential duplicates, and unusual numeric values.

### 2. Data Cleaning Using Excel Power Query

Performed cleaning and transformation steps, including:

- Standardizing text values and formatting
- Trimming unnecessary spaces
- Handling missing values using documented decisions
- Converting columns to appropriate data types
- Reviewing numeric and date fields
- Exporting the cleaned dataset to Excel

### 3. SQL Data Quality Audit

Used SQL queries in SQLite to examine the dataset and validate key data quality checks, including:

- Missing values
- Duplicate employee IDs
- Numeric ranges
- Hire date ranges
- Category values
- Salary conversion issues

The SQL queries are included in this repository for review.

### 4. Documentation

Documented the reasoning behind cleaning decisions and summarized the checks performed before and after cleaning.

## Key Findings

- The dataset contained missing values and inconsistent formatting that required cleaning.
- Text standardization and data type transformations improved consistency.
- SQL checks found no duplicate Employee IDs in the audited dataset.
- Numeric ranges and hire dates were reviewed for potential anomalies.
- Salary conversion requires further validation before salary-based analysis can be considered reliable.

## Limitations

- The dataset is synthetic and should not be treated as evidence about real employees or employers.
- Salary values require additional validation because some negative salary strings may have been converted incorrectly.
- No conclusions about actual pay equity or discrimination can be drawn from this cleaning project alone.
- The raw CSV is not currently included in the repository.

## Project Structure

```text
Messy Data Cleaning Showcase/
├── README.md
├── Employee Pay Equity - Cleaned.xlsx
├── SQL_Cleaning.db
├── SQL_Cleaning_Queries.sql
├── Cleaning Decision Log.txt
└── Before_After_Analysis.txt
```

## Skills Demonstrated

- Data cleaning and preprocessing
- Excel Power Query
- SQL querying and data quality auditing
- Missing-value handling
- Data validation
- Documentation of cleaning decisions
- GitHub project publishing

## Conclusion

This project demonstrates a structured approach to identifying data quality issues, cleaning employee records, auditing data with SQL, and documenting decisions and limitations.

The project emphasizes transparent data cleaning and validation rather than assuming that every transformed value is correct.
