# Messy Data Cleaning Showcase

## Project Overview

This project demonstrates a practical data analytics workflow using a messy employee pay equity dataset. It focuses on data quality assessment, data cleaning, SQL auditing, validation, and documentation of cleaning decisions.

The goal is to prepare a more consistent dataset while identifying limitations that must be resolved before drawing conclusions from the data.

## Tools Used

- **Microsoft Excel**
- **Power Query**
- **SQL**
- **SQLite**
- **Git and GitHub**

## Dataset Overview

The project uses an employee pay equity dataset containing employee-related information, including identifiers, demographic attributes, employment dates, salary values, and other employment-related fields.

- **Original dataset:** `employee_pay_equity_messy.csv`
- **Cleaned workbook:** `Employee Pay Equity - Cleaned.xlsx`
- **Rows in original dataset:** 96,900
- **Rows in cleaned worksheet:** 96,900

The original dataset is preserved separately from the cleaned output.

## Project Workflow

### 1. Data Quality Assessment

The original dataset was examined to identify data-quality issues, including:

- Missing values
- Inconsistent text and category formats
- Potential duplicate employee identifiers
- Numerical range issues
- Date quality issues
- Inconsistent salary formats and currency representations

### 2. Data Cleaning with Excel and Power Query

Power Query was used to perform cleaning and transformation tasks, including:

- Trimming and standardizing text
- Standardizing selected categorical values
- Handling selected missing values
- Transforming date fields
- Applying appropriate data types
- Creating a numeric salary column from raw salary text

The raw dataset was retained so that the cleaning process could be reviewed against the original values.

### 3. SQL Data Auditing

SQL queries were used to audit the original dataset and examine:

- Missing values
- Duplicate Employee IDs
- Numerical ranges
- Hire-date ranges and future dates
- Category consistency
- Salary conversion and data-quality concerns

The SQL work was used for auditing and validation. It was separate from the Power Query cleaning workflow.

### 4. Validation and Documentation

The project includes documentation of cleaning decisions, validation findings, and unresolved limitations. The row counts of the original and cleaned worksheets were compared to check whether the number of rows changed during the workflow.

## Key Findings

- The original and cleaned worksheets both contain 96,900 data rows.
- The SQL audit found no duplicate Employee IDs.
- Numerical ranges and hire dates were examined during the audit.
- Text standardization and data transformations were applied using Power Query.
- The salary conversion requires further validation before salary-based analysis can be considered reliable.

## Known Limitation

Some negative-looking salary values in the raw data appear as positive values in the converted salary column. This issue has not been fully resolved.

Consequently, the converted salary field should not be used to draw salary-based conclusions until the conversion logic has been verified against the original values.

Matching row counts alone do not prove that all records are correct, and not every improvement has been quantified through a complete before-and-after comparison.

## Project Structure

```text
Messy Data Cleaning Showcase/
├── Raw/
│   └── employee_pay_equity_messy.csv
├── Cleaned/
│   └── Employee Pay Equity - Cleaned.xlsx
├── SQL/
│   ├── Day_53_SQL_Cleaning.db
│   └── Day_53_SQL_Cleaning_Queries.sql
├── Documentation/
│   ├── Day_54_Cleaning_Decision_Log.txt
│   └── Day_55_Before_After_Analysis.txt
└── README.md
```

*Update the filenames in this structure if your actual saved filenames differ.*

## Skills Demonstrated

- Data cleaning and transformation
- Power Query
- SQL querying and data-quality auditing
- Data validation
- Handling missing and inconsistent values
- Documentation of analytical decisions
- Identifying limitations before analysis

## Conclusion

This project demonstrates a structured approach to working with messy data, from initial assessment and cleaning to SQL auditing and documentation. It also highlights the importance of validating transformed values and clearly reporting unresolved data-quality issues before using a dataset for business analysis.