📊 Customer Churn Analysis Project
📌 Project Overview

This project focuses on analyzing customer churn behavior to identify key drivers affecting customer retention and revenue.

The objective was to:

Analyze churn patterns

Identify high-risk customer segments

Understand revenue impact

Provide data-driven business recommendations

🛠️ Tools & Technologies Used

Jupyter Notebook (Pandas, NumPy) → Data Cleaning & Preprocessing

PostgreSQL → Data Storage & Aggregation Queries

Power BI → Dashboard Development & Business Visualization

DAX → KPI and Measure Calculations

📂 Project Workflow
1️⃣ Data Cleaning – Jupyter Notebook

Handled missing values:

Backfilled region_category

Filled nulls in avg_frequency_login_days

Cleaned inconsistent values (e.g., replaced “?” with “No” in referral column)

Created derived columns:

tenure_days

joining_month

joining_year

Exported cleaned dataset as CSV

2️⃣ Data Processing – PostgreSQL

Imported cleaned dataset into PostgreSQL

Performed SQL queries to calculate:

Total customers

Total churned customers

Churn rate

Membership-wise churn

Region-wise churn

Complaints vs churn

High vs Low value customer segmentation

3️⃣ Data Visualization – Power BI

Built an interactive dashboard with:

KPI Cards:

Total Customers

Total Churned

Churn Rate %

Total Transaction Value

Visualizations:

Churn by Membership

Churn by Region

Complaints vs Churn

High vs Low Value Customers

Monthly Churn Trend

📊 Key Insights

🔴 Overall churn rate: 55%

📉 Highest churn observed in Basic & No Membership customers

💰 Significant churn among High-Value customers (Revenue Risk)

🌆 Majority churn concentrated in City regions

📆 Peak churn months: July & December

🚀 Business Recommendations

Strengthen loyalty programs for Basic members

Launch retention strategies for high-value customers

Introduce seasonal engagement campaigns before peak churn months

Improve proactive engagement instead of only complaint handling

📈 KPI Measures (Power BI – DAX Example)
Total Customers = COUNT(cleaned_churn_data[customer_id])


Total Churned = 
CALCULATE(
    COUNT(cleaned_churn_data[customer_id]),
    cleaned_churn_data[churn_risk_score] = 1
)


Churn Rate % = 
DIVIDE([Total Churned], [Total Customers], 0)
📎 Dataset Features

Customer Demographics

Membership Category

Transaction Value

Login Frequency

Complaints & Feedback

Internet Usage

Tenure

Churn Risk Score (Target Variable)

🎯 Project Outcome

This end-to-end churn analysis demonstrates:

Data cleaning and transformation skills

SQL-based analytical querying

Business KPI development

Dashboard storytelling using Power BI

Strong understanding of customer retention analytics

👩‍💻 Author

Suditi Singh
Data Analyst Enthusiast 
