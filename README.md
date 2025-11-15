Project Background
Asprice Makeup, established in 2023, is a Colombian e-commerce brand that sells locally produced makeup through social media platforms.
The company began with an initial investment of only $30 and quickly grew to generate about $1,500 in monthly sales. In recent months, however, Asprice has experienced a notable decline in performance.

This project analyzes recent sales and operational data to identify the key factors behind the downturn and provide insights that will guide new marketing strategies and strengthen the company’s position in the beauty market.

Insights and recommendations are provided on the following key areas:

Category 1: An evaluation of historical sales behavior focused on order volume, customer activity, profit, and total sales, identifying patterns that explain recent fluctuations.

Category 2: Product Level Performance: Analyze products categorized by high performance and understanding their contribution to total sales

Category 3: Customer deep analysis: Understanding the behavior of customers and how a part of these customers contribute in the overall Sales

Category 4: Data-driven guidance on marketing actions and campaigns designed to improve sales performance, customer retention, and brand visibility.

The SQL queries used to clean and explore the data for this analysis can be found here - <a href="https://github.com/Emma922/Asprice-makeup-project/tree/d1281bc116911a94f7f969d4c268b05e2a9f3afb/sql.cleaning_explore">[link]</a>.

Targed SQL queries regarding various business questions can be found here - <a href="https://github.com/Emma922/Asprice-makeup-project/tree/f88984d9cb5a02049d58ad5cb888523d7cdd46bf/sql%20business%20questions">[link]</a>.

An interactive Tableau dashboard used to understand and analyze customers behavior can be found - <a href="https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupDasboard/CustomerDashboard">[here]</a>.

An interactive Tableau dashboard used to understand and analyze sales and product behavior can be found - <a href="https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupSalesProductsDashboard/SalesProductsDashboard">[here]</a>.

Data Structure & Initial Checks
The companies main database structure as seen below consists of four tables: orders, products, customers, with a total row count of 610 records. A description of each table is as follows:

<img width="631" height="470" alt="Asprice Makeup Dataset drawio" src="https://github.com/user-attachments/assets/ef0f0a6a-37d8-4f4f-8c65-ee2132e10297" />


Executive Summary
Overview of Findings

Asprice Makeup showed steady growth earlier in the year, but recent sales dropped sharply, reaching declines of up to 83 percent. The analysis indicates that the absence of a loyalty program, weak marketing focus, limited promotions, and the lack of wholesale channels contributed to this decline. The data also shows a strong 20–80 pattern, where a small group of brands, products, and customers drive most revenue. The top ten products account for 35 percent of total sales, reflecting a heavy dependency on a limited catalog. Based on these findings, the company would benefit from implementing a loyalty program, focusing marketing efforts on high-performing products, introducing targeted promotions, and expanding into wholesale distribution.

Below is the overview page from the Tableau dashboard and more examples are provided throgouth the report. The entire interactive dashboard can be downloaded - <a href="https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupDasboard/CustomerDashboard">[here]</a>. and  - <a href="https://public.tableau.com/app/profile/emmanuel.casta.o/viz/AspricemakeupSalesProductsDashboard/SalesProductsDashboard">[here]</a>.
<img width="1976" height="1799" alt="Sales   Products Dashboard" src="https://github.com/user-attachments/assets/ed7de8cd-8bb7-4a96-8d80-0e9c898971cc" />


Insights Deep Dive
Customer Loyalty:

-Despite currently there are not loyal customer we classified them as people that has bought 2 o more times and has bought more than 200 COP, because there are patterns that could make these people possible loyal customers

- Possible loyal customers contributes in more than 3rd part of the overall sales (36%), it makes it more important when we take into account that those customers represent 15% of customers

-Most difficult months like September and october were helped by this possible loyal customers, about 40% of sales comes from them

-Possible loyal customers provides company with highest AOV and number of orders.

<img width="577" height="358" alt="Screenshot 2025-11-14 204058" src="https://github.com/user-attachments/assets/9bb208e5-6a2c-481d-984c-f8b30292b3dc" />

<img width="847" height="462" alt="Screenshot 2025-11-14 204147" src="https://github.com/user-attachments/assets/2764e60c-b0cd-4e1c-81da-4c86bcc61a92" />

Category 2:
Main insight 1. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 2. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 3. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 4. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]

Category 3:
Main insight 1. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 2. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 3. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 4. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]

Category 4:
Main insight 1. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 2. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 3. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

Main insight 4. More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]

Recommendations:
Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following:

Specific observation that is related to a recommended action. Recommendation or general guidance based on this observation.

Specific observation that is related to a recommended action. Recommendation or general guidance based on this observation.

Specific observation that is related to a recommended action. Recommendation or general guidance based on this observation.

Specific observation that is related to a recommended action. Recommendation or general guidance based on this observation.

Specific observation that is related to a recommended action. Recommendation or general guidance based on this observation.

Assumptions and Caveats:
Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)

Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)

Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
