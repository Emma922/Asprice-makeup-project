# Asprice Makeup — Sales Decline Analysis

## Project Background

Asprice Makeup is a Colombian e-commerce brand that sells locally produced cosmetics through social media. Founded in 2023 with an initial investment of $30, the company scaled to roughly $1,500 in monthly revenue — but began experiencing a sharp sales decline that threatened that growth.

I completed a consulting project focused on identifying root causes of sales decline. Working with 4 months of real transactional data (610 records across orders, products, and customers), I conducted end-to-end analysis: data cleaning in SQL, exploratory analysis, customer segmentation, and product performance evaluation — all presented through interactive Tableau dashboards and a stakeholder presentation.

**The analysis is organized around four key areas:**

- **Sales Trends:** Order volume, customer activity, profit, and revenue over time — identifying patterns behind the decline
- **Product Performance:** Contribution analysis and high-impact product identification
- **Customer Behavior:** Segmentation by spending and frequency to understand who drives revenue
- **Strategic Recommendations:** Data-driven marketing and retention actions

**Resources:**
- 🔗 [SQL — Cleaning & Exploration](https://github.com/Emma922/Asprice-makeup-project/tree/d1281bc116911a94f7f969d4c268b05e2a9f3afb/sql.cleaning_explore)
- 🔗 [SQL — Business Questions](https://github.com/Emma922/Asprice-makeup-project/tree/f88984d9cb5a02049d58ad5cb888523d7cdd46bf/sql%20business%20questions)
- 📊 [Customer Dashboard — Tableau](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupDasboard/CustomerDashboard)
- 📊 [Sales & Products Dashboard — Tableau](https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupSalesProductsDashboard/SalesProductsDashboard)
- 📑 [Stakeholder Presentation](https://docs.google.com/presentation/d/1xkthZlvwGp6-4XZL--Y854IirkcQPrbLGQei1kBC0mY/edit?slide=id.g390c52f68dd_0_1576#slide=id.g390c52f68dd_0_1576)

---

## Data Structure

The database consists of three tables — `orders`, `products`, and `customers` — totaling 610 records. Initial checks included null value handling, duplicate removal, and data type validation.

![Dataset Structure](https://github.com/user-attachments/assets/ef0f0a6a-37d8-4f4f-8c65-ee2132e10297)

---

## Executive Summary

Sales declined by up to **83%** in recent months after a period of steady growth. The analysis points to four main contributing factors: no loyalty program, low marketing focus on top-performing products, limited promotions, and underdeveloped wholesale channels.

**Three patterns stand out across all findings:**

- A clear **80/20 distribution**: a small number of brands, products, and customers generate the majority of revenue
- The **top 10 products** account for **35% of total sales**, exposing heavy dependency on a narrow catalog
- The **top 3 brands** alone contribute over **60% of all revenue**
- A single product — Corrector Bloom — generates nearly **10% of total revenue** on its own

These patterns suggest that targeted, high-leverage marketing actions could recover and grow sales without requiring a complete strategy overhaul.

![Sales and Products Dashboard](https://github.com/user-attachments/assets/ed7de8cd-8bb7-4a96-8d80-0e9c898971cc)

---

## Insights Deep Dive

### 1. Customer Loyalty

Asprice had no formal loyalty program at the time of analysis. To quantify the potential impact of one, I constructed a hypothetical segmentation framework using available purchase data:

- **"Potential Loyal Customers"** — at least 2 purchases and cumulative spending above 200,000 COP
- **"Targeted Loyal Customers"** — cumulative spending above 200,000 COP

**Key findings:**

- Potential Loyal Customers make up only **15% of the customer base** but contribute **36% of total sales**
- During the worst-performing months (September–October), this segment generated ~**40% of total revenue**, acting as a stabilizing force
- This group has the highest Average Order Value (AOV) and purchase frequency — making them the highest-priority retention target

![Customer Loyalty Snapshot](https://github.com/user-attachments/assets/9bb208e5-6a2c-481d-984c-f8b30292b3dc)

---

### 2. Product & Brand Distribution

The 80/20 pattern is consistent across the product catalog:

- **18% of brands** generate **79% of total revenue**
- **20% of products** represent **60% of total sales**
- The top-performing products together drive **35% of revenue**
- Corrector Bloom alone accounts for ~**10% of total revenue**

This concentration is both an opportunity and a risk — strong products to build campaigns around, but dangerous over-reliance if any one of them underperforms.

![Brand and Product Distribution](https://github.com/user-attachments/assets/e28a604c-0ed3-4d77-a221-a20a4a1f3de2)

---

### 3. Average Order Value (AOV) Trend

Despite the overall sales drop, **AOV increased** — a counterintuitive but important finding.

The rise in AOV coincides with the introduction of wholesale sales on **September 7**. Since then, individual transaction values have grown steadily even as total order volume declined. This signals that the customer base is becoming more concentrated but spending more per order — a shift that informs how to approach both retention and wholesale expansion.

![AOV Trend](https://github.com/user-attachments/assets/c02efdc7-909e-4966-ae4d-94e52f3871f6)

---

## Recommendations

| Priority | Action | Rationale |
|----------|--------|-----------|
| 🔴 High | **Launch a loyalty program** — reward repeat buyers with gifts, exclusive bundles, or early access | Top 15% of customers drive 36% of sales; formalizing retention is the highest-leverage move |
| 🔴 High | **Focus marketing on top 5 brands** — run targeted campaigns promoting these brands | 18% of brands = 79% of revenue; concentrated spend will outperform broad campaigns |
| 🟡 Medium | **Feature top products at checkout** — surface high-performing items with exclusive discounts | Increases AOV and drives repeat purchases from engaged customers |
| 🟡 Medium | **Expand wholesale tiers** — create differentiated wholesale categories for broader reach | AOV increase post-September confirms wholesale is driving value; scaling it is low risk |
| 🟢 Growth | **Launch limited-time promotions** anchored in top 20% products | Creates urgency while reducing risk by promoting proven sellers |
| 🟢 Growth | **Introduce customizable product bundles** featuring top performers | Increases basket size and gives customers more personalization |

---

## Project Scope & Constraints

| Constraint | How it was handled |
|------------|-------------------|
| 4-month data window (June–September 2024) | Sufficient to identify the decline pattern and its inflection points; seasonality analysis would require longer-term data |
| 610 records | Small but complete real transactional data from an active business; findings are consistent and directionally reliable |
| No formal loyalty program existed | Segmentation was constructed analytically using frequency and spending thresholds to simulate loyalty tiers |
| No inventory or returns data | Analysis scoped to sales and customer behavior; noted as a limitation in the stakeholder presentation |

