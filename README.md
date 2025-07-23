# 🧸 Retail Sales Intelligence Portfolio

## 1. 📌 Project Background

This project centers on a retail business analysis for a consumer goods store operating both **in-store and online channels**. The goal was to identify performance trends, optimize profitability, and provide data-driven insights into **customer behavior**, **sales growth**, and **discount efficiency**.

The data originated from raw Excel exports and underwent **cleansing in SQL** before being visualized in Power BI. This full-stack process reflects both technical and business acumen in translating raw transactional data into strategic insights.

Key business goals:
- Improve gross margins by optimizing discount strategies
- Understand product and category performance
- Identify underperforming channels and locations
- Track customer growth and sales efficiency over time

## 2. 🧱 Data Structure and Overview

The data model was structured using a **star schema** with the following tables:

- **Fact Table**: `clean_retail_sales`
- **Dimension Table**: `Dim_date`

**Key Fields**:
- `Transaction_ID`, `Customer_ID`, `Item`, `Category`, `Location`, `Payment_Method`, `Transaction_Date`, `Total_Spent`, `Price_Per_Unit`, `Discount_Applied`, `Quantity`, `Gross_Profit`

### ERD Overview:
- One-to-many relationship: `Dim_date[Date]` → `clean_retail_sales[Transaction_Date]`
- DAX Measures: Revenue, Basket Size, Discount Revenue, MoM Revenue, Cumulative Revenue, Gross Profit, Active Customers

## 3. 📈 Executive Summary

### 🔍 Product Performance
- **Item_23** and **Item_18** were top performers by revenue across all quarters.
- Gross profit, however, varied — **Item_25** showed strong revenue but underperformed in margins.
- **High discount items** led to sales growth but reduced profitability.
![ProductPerformance](https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/Screenshot%202025-07-18%20192347.png)

### 💰 Sales & Profitability
- **Total Revenue**: R510,330  
- **Gross Profit (Q4)**: R112.50  
- **Discount Revenue**: R176,690  
- **Profit Margin**: 0.031%  
- **Loss in Q3**: R1,791  
![Sales&Profitability](https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/Screenshot%202025-07-18%20192317.png)

📉 **Insight**: Discounting helped move inventory but significantly hurt profitability in Q3 and Q4.

### 🧍 Customer & Channel Trends
- **Active Customers**: 25 (flat across periods)
- **Online vs In-store**: Nearly matched; in-store slightly ahead in volume
- **Customer plateau** indicates need for stronger retention strategy


## 4. 📊 Insight Deep Dive

### 4.1 Product Category Performance
- **Beverages & Essentials** led revenue and gross profit across most locations.
- **Butchers and Furniture** were high in quantity sold, but had variable profitability.
- **Discount-heavy categories** saw thinner margins.
![InsightDeepDive](https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/Screenshot%202025-07-18%20192455.png)

### 4.2 Location Sales Trends
- Top Locations:
  - **Urban Store 1** and **Online Region A**
- Underperforming Locations:
  - **Airport channel stores** showed lowest gross profit
  - **Residential Zone B** had low revenue per transaction
![LocationSalesTrends](https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/Screenshot%202025-07-18%20192317.png)

📌 **Action**: Rethink product mix and promotions for underperforming zones.

### 4.3 Inventory & Discount Impact
- High sales-to-inventory items (e.g., **Item_23**, **Playfoam**) should be prioritized.
- Low turnover items (e.g., **Deck of Cards**) need bundling or markdown strategies.
- **Discount Revenue = R176.69K**, but margin loss indicates **overuse of promotions**.

## 5. 🎯 Strategic Recommendations

| Focus Area | Recommendation |
|------------|----------------|
| **Product Strategy** | Prioritize high-margin SKUs; reduce blanket discounting |
| **Customer Retention** | Launch loyalty programs or personalized promotions |
| **Channel Optimization** | Scale profitable online categories; monitor cost-to-serve |
| **Inventory Management** | Increase stock for fast movers; bundle or rotate slow sellers |
| **Regional Marketing** | Focus campaigns on high-performing areas (e.g., Downtown) |
| **Profitability Tracking** | Monitor gross margin weekly; automate alerts for loss-making SKUs |

## 6. ⚠️ Caveats and Assumptions

- **Data Completeness**: Assumes Excel + SQL view represent complete records.
- **Time Frame**: Analysis reflects historical patterns — future changes in demand/supply may vary.
- **Margin Data**: Gross profit was inferred from Total Spent and Cost proxies.
- **Static Behavior**: Demographic behavior assumed stable over period analyzed.

## 7. 📁 Resources

- **Power BI Report**: <a href="https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/retail_sales.pbix">pbix_file</a>
- **SQL Script**: <a href="https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/SQL_cleaned.sql">SQL_file</a>
 CSV Data: <a href="https://github.com/Tadichi/end-to-end-retail-bi-project/blob/main/retail_store_sales.csv">Dataset</a>

## 8. 🙌 Let's Connect

This project reflects a **full-stack BI approach**: from raw data → insights → business strategy.

If you're interested in BI storytelling, retail analytics, or data-driven decision-making — let’s connect!

📂 [GitHub Portfolio](https://github.com/Tadichi)
