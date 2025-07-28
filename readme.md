Pakistan Largest E-Commerce Dataset Analysis

This project involves a full data analysis pipeline using *Python, **SQL, and **Power BI* on Pakistan’s largest e-commerce dataset. 
The goal is to extract actionable insights and visualize key metrics that reflect customer behavior and business performance.

---

## Dataset Overview

This dataset includes detailed records of e-commerce transactions from Pakistan, with information on products, orders, customers, payment methods, pricing, discounts, and time-based metrics.

### Key Columns:

| Column Name             | Description |
|-------------------------|-------------|
| item_id               | Unique ID for each item |
| status                | Status of the order (e.g., completed, cancelled) |
| created_at            | Timestamp of when the order was placed |
| sku                   | Product code (Stock Keeping Unit) |
| price                 | Unit price |
| qty_ordered           | Number of units ordered |
| grand_total           | Total price of the transaction |
| increment_id          | Unique order ID |
| category_name_1       | Product category |
| sales_commission_code| Commission code (if applicable) |
| discount_amount       | Discount applied to the transaction |
| payment_method        | Payment type (e.g., COD, credit card) |
| Working Date          | Transaction date |
| BI Status             | BI-related status (optional) |
| MV                    | Market value |
| Year, Month, M-Y  | Date breakdown for analysis |
| Customer Since        | Customer onboarding date |
| FY                    | Fiscal year |

## Tools & Technologies Used

- *Python* (Pandas, Matplotlib, Seaborn)
- *SQL* (for data querying and aggregation)
- *Power BI* (interactive dashboards)

## Project Workflow

### 1. *Data Cleaning & Preprocessing (Python)*
- Handled missing values
- Converted date columns into proper datetime format
- Handled negative values
- Created new time-based features for trend analysis

### 2. *Exploratory Data Analysis (EDA)*
- Sales performance by month and year
- Revenue distribution across product categories
- Customer trends and retention analysis
- Payment method patterns

### 3. *SQL Queries*
- Revenue by category and year
- Most popular payment methods
- Discount impact on sales volume
- Average order value per month

### 4. *Power BI Dashboard*
- Created interactive visualizations including:
  - Revenue trends over time
  - Category-wise performance
  - Top SKUs by sales
  - Payment method distribution

## Key Insights
- *Mobile&Tablets* and *Men's Fashion* were top-performing categories by revenue.
- Most customers preferred *Cash on Delivery* as the payment method.
- Sales peaked in Q4 2017
- September 2017 recorded the highest return rate

## 🎯 Conclusion

This project demonstrates how to use *data analysis tools* to drive *business intelligence* in a real-world e-commerce setting. 
It covers everything from raw data to actionable insights and visual storytelling using Power BI.


## Project Folder Structure
Pakistan-Ecommerce-Analysis/
│
├── data/                  # Pakistan Largest Ecommerce Dataset and Cleaned_Pakistan_Largest_Ecommerce_Dataset
├── notebooks/             # Project_final
├── sql_queries/           # SQLQuery project
├── dashboard/             # project new
└── readme.md              # Project documentation
