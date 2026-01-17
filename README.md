# Asprice Makeup Data Analysis Project

## Project Background

Asprice Makeup, established in 2023, is a Colombian e-commerce brand that sells locally produced makeup through social media platforms. The company began with an initial investment of only $30 and quickly grew to generate about $1,500 in monthly sales. However, in recent months, Asprice has experienced a notable decline in performance.

This project analyzes recent sales and operational data to identify the key factors behind the downturn and provide insights to guide new marketing strategies and strengthen the company’s position in the beauty market.

**Insights and recommendations focus on the following key areas:**

- **Category 1:** Evaluation of historical sales behavior focused on order volume, customer activity, profit, and total sales, identifying patterns that explain recent fluctuations.
- **Category 2:** Product-level performance analysis categorizing products by high performance and understanding their contribution to total sales.
- **Category 3:** Deep customer analysis to understand customer behavior and how a segment contributes to overall sales.
- **Category 4:** Data-driven guidance on marketing actions and campaigns designed to improve sales performance, customer retention, and brand visibility.

The SQL queries used to clean and explore the data can be found here:  
[SQL Cleaning and Exploration Queries](https://github.com/Emma922/Asprice-makeup-project/tree/d1281bc116911a94f7f969d4c268b05e2a9f3afb/sql.cleaning_explore)

Targeted SQL queries for various business questions can be found here:  
[SQL Business Questions Queries](https://github.com/Emma922/Asprice-makeup-project/tree/f88984d9cb5a02049d58ad5cb888523d7cdd46bf/sql%20business%20questions)

Interactive Tableau dashboards for customer analysis and sales/product behavior are available here:  
- [Customer Dashboard](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupDasboard/CustomerDashboard)  
- [Sales and Products Dashboard](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupSalesProductsDashboard/SalesProductsDashboard)

### Data Structure & Initial Checks

The company's main database consists of four tables: `orders`, `products`, and `customers`, with a total of 610 records. Below is a description of the dataset structure:

![Asprice Makeup Dataset](https://github.com/user-attachments/assets/ef0f0a6a-37d8-4f4f-8c65-ee2132e10297)

---

## Executive Summary

### Overview of Findings

Asprice Makeup showed steady growth earlier in the year, but recent sales dropped sharply by up to 83%. The analysis indicates that the absence of a loyalty program, weak marketing focus, limited promotions, and lack of wholesale channels contributed to this decline.

Key insights include:

- A **20–80 pattern** where a small number of brands, products, and customers generate most revenue.
- The top ten products account for **35% of total sales**, showing heavy dependency on a limited product catalog.
- The top three brands alone contribute over **60% of all sales**.
- One single product generates almost **10% of total revenue**, indicating significant reliance on a few key products.

Based on these findings, Asprice Makeup would benefit from:

- Implementing a loyalty program
- Focusing marketing efforts on high-performing products
- Introducing targeted promotions
- Expanding wholesale distribution

Below is a sample overview from the Tableau dashboard. The full interactive dashboards can be accessed online:  
[Customer Dashboard](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupDasboard/CustomerDashboard) |  
[Sales and Products Dashboard](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupSalesProductsDashboard/SalesProductsDashboard)

![Sales and Products Dashboard](https://github.com/user-attachments/assets/ed7de8cd-8bb7-4a96-8d80-0e9c898971cc)

---

## Insights Deep Dive

### Customer Loyalty

Asprice currently operates without a formal loyalty program. For the purpose of this analysis, a hypothetical segmentation was constructed to illustrate how loyalty tiers could impact overall sales. “Potential loyal customers” were defined as those with at least two purchases and cumulative spending above 200,000 COP, and "Targeted loyal customers" as those with a cumulative spending above 200,000 COP. This imaginary segmentation serves as an analytical framework, allowing the evaluation of how targeted loyal customer groups might influence revenue distribution, retention strategies, and upsell opportunities.

- “Potential loyal customers” makes up only **15% of customers** but contributes **36% of total sales**.
- During the toughest months (September and October), “Potential loyal customers” generated about **40% of total revenue**, helping stabilize sales.
- “Potential loyal customers” have the highest Average Order Value (AOV) and number of orders, making them a key segment for future loyalty strategies.
- "Targeted loyal customers" accounted for similar numbers, making this segment crucial as well.

![Customer Loyalty Snapshot](https://github.com/user-attachments/assets/9bb208e5-6a2c-481d-984c-f8b30292b3dc)

### Products and Brand Distribution

- The data shows a strong **20–80 pattern**:
  - Only **18% of brands** generate **79% of total revenue**.
  - **20% of products** represent **60% of overall sales**.
  - The top-performing products contribute **35% of total revenue**.
  - One product alone accounts for about **10% of total revenue**, revealing significant dependence on a small product base.

![Brand and Product Distribution](https://github.com/user-attachments/assets/e28a604c-0ed3-4d77-a221-a20a4a1f3de2)

### Average Order Value (AOV) per Customer

- While most business metrics declined recently, **AOV increased**, indicating improved purchasing behavior.
- The rise in AOV correlates with the introduction of wholesale sales on September 7.
- Since then, AOV per customer has steadily risen despite overall sales dropping.

![AOV Trend](https://github.com/user-attachments/assets/c02efdc7-909e-4966-ae4d-94e52f3871f6)

---

## Recommendations

Based on the analysis, the following actions are recommended to the stakeholder team:

- **Customer Loyalty is a strong growth opportunity:**  
  Develop and launch a formal loyalty program rewarding repeat customers with gifts, special offers, or exclusive bundles to encourage retention.

- **Encourage purchases of top brands:**  
  Run targeted promotions or marketing campaigns promoting the top 5 brands to increase average order value (AOV) and sales volume.

- **Promote high-performing products at checkout:**  
  Recommend these products during the checkout process and offer exclusive discounts to increase sales and AOV.

- **Expand and improve wholesale sales:**  
  Maintain current wholesale channels, create different wholesale categories to reach a broader customer base, and increase wholesale options.

  ## 

- **Launch retention-focused discounts:**  
  Offer limited-time promotions that include high-performing or top 20% products to boost repeat purchases.

- **Expand product bundles:**  
  Create new product bundles or allow customers to customize bundles including high-performing or top 20% products to drive sales.


  ## Project Limitations

Despite providing valuable insights into Asprice Makeup’s recent performance, this analysis is subject to several important limitations that should be considered when interpreting the results:

### Short Data Window  
Only four months of data are available, limiting the ability to identify long‑term trends, seasonality, or reliable forecasts.

### Limited Customer Information  
Key attributes such as demographics, lifetime value, and repeat purchase behavior are missing, restricting deeper segmentation and loyalty analysis.

### Operational & External Gaps  
Data excludes inventory, fulfillment, returns, and external influences (competitors, economic conditions, seasonal demand), reducing context for performance drivers.

### Need for Ongoing Collection  
Findings should be considered preliminary. A more robust evaluation requires longer historical data, richer customer attributes, and operational metrics.

Future iterations of this project will be able to incorporate these elements for a more complete and accurate assessment.

[Slides for the presentation to stakeholder](https://docs.google.com/presentation/d/1xkthZlvwGp6-4XZL--Y854IirkcQPrbLGQei1kBC0mY/edit?slide=id.g390c52f68dd_0_1576#slide=id.g390c52f68dd_0_1576)


