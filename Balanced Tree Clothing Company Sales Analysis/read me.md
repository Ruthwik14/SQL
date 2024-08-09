**Balanced Tree Clothing Company Sales Analysis**

**Introduction:**

The Balanced Tree Clothing Sales Analysis project focuses on analyzing
sales data from Balanced Tree, a fictional clothing company. The project
aims to derive insights into various aspects of sales transactions,
product performance, and customer behavior to inform business decisions
and strategies.

**Database Structure:**

The project utilizes a relational database management system with the
following structure:

**Tables:**

**product_hierarchy:** Stores hierarchical information about product
categories, segments, and styles.

**product_prices:** Contains pricing information for different products.

**product_details:** Provides detailed information about products
including names, categories, segments, and styles.

**sales:** Captures transactional data including product IDs,
quantities, prices, discounts, membership status, transaction IDs, and
timestamps.

**Analysis Queries:**

The project employs various SQL queries to conduct comprehensive
analyses of the sales data:

Part A: High-Level Sales Analysis

> 1a. What was the total quantity sold for all products? SELECT SUM(qty)
> FROM sales;

| **Total_quantity** |
|--------------------|
| 45216              |

> 1b. What was the total quantity sold for EACH product? SELECT
>
> p.product_name,
>
> SUM(s.qty) AS Total_quantity FROM
>
> product_details p JOIN
>
> sales s ON p.product_id = s.prod_id GROUP BY
>
> p.product_name;

<table>
<colgroup>
<col style="width: 64%" />
<col style="width: 35%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Total_quantity</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Navy Oversized Jeans - Womens</td>
<td><blockquote>
<p>3856</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td><blockquote>
<p>3800</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Striped Socks - Mens</p>
</blockquote></td>
<td><blockquote>
<p>3655</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Pink Fluro Polkadot Socks - Mens</td>
<td><blockquote>
<p>3770</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Cream Relaxed Jeans - Womens</td>
<td><blockquote>
<p>3707</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Indigo Rain Jacket - Womens</p>
</blockquote></td>
<td><blockquote>
<p>3757</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td><blockquote>
<p>3819</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td><blockquote>
<p>3792</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Black Straight Jeans - Womens</td>
<td><blockquote>
<p>3786</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Khaki Suit Jacket - Womens</p>
</blockquote></td>
<td><blockquote>
<p>3752</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Grey Fashion Jacket - Womens</td>
<td><blockquote>
<p>3876</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Teal Button Up Shirt - Mens</p>
</blockquote></td>
<td><blockquote>
<p>3646</p>
</blockquote></td>
</tr>
</tbody>
</table>

> 2a. What is the total generated revenue for all products before
> discounts? SELECT
>
> SUM(qty \* price) AS Total_revenue FROM
>
> sales;

| **Total_revenue** |
|-------------------|
| 1289453           |

> 2b. What is the total generated revenue for EACH product before
> discounts? SELECT
>
> p.product_name,
>
> SUM(s.qty \* s.price) AS total_revenue FROM
>
> product_details p JOIN
>
> sales s ON p.product_id = s.prod_id GROUP BY
>
> p.product_name ORDER BY
>
> total_revenue DESC;

<table>
<colgroup>
<col style="width: 67%" />
<col style="width: 32%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><strong>Total_revenue</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>217683</td>
</tr>
<tr class="even">
<td>Grey Fashion Jacket - Womens</td>
<td>209304</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td>152000</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td>136512</td>
</tr>
<tr class="odd">
<td>Black Straight Jeans - Womens</td>
<td>121152</td>
</tr>
<tr class="even">
<td>Pink Fluro Polkadot Socks - Mens</td>
<td>109330</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Khaki Suit Jacket - Womens</p>
</blockquote></td>
<td>86296</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Indigo Rain Jacket - Womens</p>
</blockquote></td>
<td>71383</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Striped Socks - Mens</p>
</blockquote></td>
<td>62135</td>
</tr>
<tr class="even">
<td>Navy Oversized Jeans - Womens</td>
<td>50128</td>
</tr>
<tr class="odd">
<td>Cream Relaxed Jeans - Womens</td>
<td>37070</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Teal Button Up Shirt - Mens</p>
</blockquote></td>
<td>36460</td>
</tr>
</tbody>
</table>

> 3a. What was the total discount amount for all products? SELECT
>
> ROUND(SUM((price \* qty) \* discount / 100), 2) AS Total_discounts
> FROM
>
> sales;

| **Total_discounts** |
|---------------------|
| 156229.14           |

> 3b. What is the total discount for EACH product? I will include total
> item revenue with this query. SELECT
>
> p.product_name,
>
> SUM(s.qty \* s.price) AS Total_revenue,
>
> ROUND(SUM((s.price \* s.qty) \* discount / 100), 2) AS Total_discounts
> FROM
>
> product_details p JOIN
>
> sales s ON p.product_id = s.prod_id GROUP BY
>
> p.product_name ORDER BY
>
> Total_discounts DESC;

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 23%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><strong>Total_revenue</strong></th>
<th><blockquote>
<p><strong>Total_discounts</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>217683</td>
<td>26819.07</td>
</tr>
<tr class="even">
<td>Grey Fashion Jacket - Womens</td>
<td>209304</td>
<td>25391.88</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td>152000</td>
<td>18377.6</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td>136512</td>
<td>16650.36</td>
</tr>
<tr class="odd">
<td>Black Straight Jeans - Womens</td>
<td>121152</td>
<td>14744.96</td>
</tr>
<tr class="even">
<td>Pink Fluro Polkadot Socks - Mens</td>
<td>109330</td>
<td>12952.27</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Khaki Suit Jacket - Womens</p>
</blockquote></td>
<td>86296</td>
<td>10243.05</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Indigo Rain Jacket - Womens</p>
</blockquote></td>
<td>71383</td>
<td>8642.53</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Striped Socks - Mens</p>
</blockquote></td>
<td>62135</td>
<td>7410.81</td>
</tr>
<tr class="even">
<td>Navy Oversized Jeans - Womens</td>
<td>50128</td>
<td>6135.61</td>
</tr>
<tr class="odd">
<td>Cream Relaxed Jeans - Womens</td>
<td>37070</td>
<td><blockquote>
<p>4463.4</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Teal Button Up Shirt - Mens</p>
</blockquote></td>
<td>36460</td>
<td><blockquote>
<p>4397.6</p>
</blockquote></td>
</tr>
</tbody>
</table>

# Part B: Transaction Analysis

1.  **How many unique transactions were there? SELECT**

> COUNT(DISTINCT txn_id) AS unique_transactions FROM
>
> sales;

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Unique_Transactions</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>2500</p>
</blockquote></td>
</tr>
</tbody>
</table>

2.  **What is the average unique products purchased in each transaction?
    I believe this is another oddly worded question. I interpret this
    question to ask "What is the average NUMBER/COUNT OF unique items
    purchased per transaction?"**

> SELECT
>
> ROUND(AVG(unique_item)) AS avg_number_of_items FROM
>
> (
>
> SELECT
>
> COUNT(DISTINCT(prod_id)) AS unique_item FROM
>
> sales GROUP BY

txn_id

) AS counts;

| **Avg_number_of_items** |
|-------------------------|
| 6                       |

3.  **What are the 25th, 50th and 75th percentile values for the revenue
    per transaction? SELECT**

> (SELECT revenue FROM (
>
> SELECT
>
> revenue,
>
> ROW_NUMBER() OVER (ORDER BY revenue) AS rn, COUNT(\*) OVER () AS cnt
>
> FROM (
>
> SELECT ROUND(SUM(price \* qty), 2) AS revenue FROM sales
>
> GROUP BY txn_id
>
> ) AS get_revenue
>
> ) AS sub
>
> WHERE rn = CEIL(0.25 \* cnt)) AS percentile_25,
>
> (SELECT revenue FROM (
>
> SELECT
>
> revenue,
>
> ROW_NUMBER() OVER (ORDER BY revenue) AS rn, COUNT(\*) OVER () AS cnt
>
> FROM (
>
> SELECT ROUND(SUM(price \* qty), 2) AS revenue FROM sales
>
> GROUP BY txn_id
>
> ) AS get_revenue
>
> ) AS sub
>
> WHERE rn = CEIL(0.5 \* cnt)) AS percentile_50,
>
> (SELECT revenue FROM (
>
> SELECT
>
> revenue,
>
> ROW_NUMBER() OVER (ORDER BY revenue) AS rn, COUNT(\*) OVER () AS cnt
>
> FROM (
>
> SELECT ROUND(SUM(price \* qty), 2) AS revenue FROM sales
>
> GROUP BY txn_id
>
> ) AS get_revenue
>
> ) AS sub
>
> WHERE rn = CEIL(0.75 \* cnt)) AS percentile_75

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Percentile_25</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Percentile_50</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Percentile_75</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>375</p>
</blockquote></td>
<td><blockquote>
<p>509</p>
</blockquote></td>
<td><blockquote>
<p>647</p>
</blockquote></td>
</tr>
</tbody>
</table>

4.  **What is the average discount value per transaction? SELECT**

> AVG(total_discounts) FROM
>
> (SELECT
>
> txn_id,
>
> ROUND(SUM((price \* qty) \* discount / 100), 2) AS total_discounts
> FROM
>
> sales GROUP BY
>
> txn_id
>
> ) AS ext;

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Avg_Total_discount</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>62.49</td>
</tr>
</tbody>
</table>

5.  **What is the percentage split of all transactions for members vs
    non-members? SELECT**

> ROUND((SELECT COUNT(membe) FROM sales WHERE membe = 't') / (SELECT
> COUNT(membe) FROM sales) \* 100, 0) AS member_percentage,
>
> ROUND((SELECT COUNT(membe) FROM sales WHERE membe = 'f') / (SELECT
> COUNT(membe) FROM sales) \* 100, 0) AS non_member_percentage
>
> FROM
>
> sales;

<table>
<colgroup>
<col style="width: 44%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Member_percentage</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Non_member_percentage</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>60</p>
</blockquote></td>
<td>40</td>
</tr>
</tbody>
</table>

6.  **What is the average revenue for member transactions and non-member
    > transactions? SELECT**

> membe,
>
> SUM(qty \* price) AS revenue FROM
>
> sales GROUP BY
>
> membe;

| **Membe** | **Revenue** |
|-----------|-------------|
| t         | 776984      |
| f         | 512469      |

# Part C: Product Analysis

1.  **What are the top 3 products by total revenue before discount?
    SELECT**

> p.product_name,
>
> SUM(s.price \* s.qty) AS total_revenue FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.product_name ORDER BY

<table>
<colgroup>
<col style="width: 66%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><strong>Total_revenue</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>217683</td>
</tr>
<tr class="even">
<td><blockquote>
<p>Grey Fashion Jacket - Womens</p>
</blockquote></td>
<td>209304</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td>152000</td>
</tr>
</tbody>
</table>

> total_revenue DESC LIMIT 3;

2.  **What is the total quantity, revenue and discount for each segment?
    > SELECT**

> p.segment_id, p.segment_name,
>
> SUM(s.qty) AS total_quantity,
>
> SUM(s.qty \* s.price) AS total_revenue,
>
> ROUND(SUM((s.price \* s.qty) \* s.discount / 100), 2) AS
> total_discounts FROM
>
> product_details p
>
> JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.segment_id, p.segment_name;

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 21%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>segment_id</strong></p>
</blockquote></th>
<th><strong>segment_name</strong></th>
<th><blockquote>
<p><strong>Total_quantity</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Total_revenue</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Total_discounts</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>3</td>
<td>Jeans</td>
<td><blockquote>
<p>11349</p>
</blockquote></td>
<td><blockquote>
<p>208350</p>
</blockquote></td>
<td><blockquote>
<p>25343.97</p>
</blockquote></td>
</tr>
<tr class="even">
<td>5</td>
<td>Shirt</td>
<td><blockquote>
<p>11265</p>
</blockquote></td>
<td><blockquote>
<p>406143</p>
</blockquote></td>
<td><blockquote>
<p>49594.27</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>6</td>
<td>Socks</td>
<td><blockquote>
<p>11217</p>
</blockquote></td>
<td><blockquote>
<p>307977</p>
</blockquote></td>
<td><blockquote>
<p>37013.44</p>
</blockquote></td>
</tr>
<tr class="even">
<td>4</td>
<td>Jacket</td>
<td><blockquote>
<p>11385</p>
</blockquote></td>
<td><blockquote>
<p>366983</p>
</blockquote></td>
<td><blockquote>
<p>44277.46</p>
</blockquote></td>
</tr>
</tbody>
</table>

3.  **What is the top selling product for each segment?**

> select segment_id,segment_name,product_name,total_quantity,rnk from (
> select p.segment_id,
>
> p.segment_name, p.product_name,
>
> SUM(s.qty) as total_quantity,
>
> rank() over(partition by p.segment_id order by SUM(s.qty) DESC) AS rnk
> from product_details p
>
> join sales s ON s.prod_id = p.product_id GROUP BY
>
> p.segment_id,p.segment_name,p.product_name) as ranked_data where rnk =
> 1;

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 19%" />
<col style="width: 39%" />
<col style="width: 19%" />
<col style="width: 6%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>segment_id</strong></p>
</blockquote></th>
<th><strong>segment_name</strong></th>
<th><blockquote>
<p><strong>product_name</strong></p>
</blockquote></th>
<th><strong>Total_quantity</strong></th>
<th><blockquote>
<p><strong>rnk</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>3</td>
<td>Jeans</td>
<td><blockquote>
<p>Navy Oversized Jeans - Womens</p>
</blockquote></td>
<td>3856</td>
<td>1</td>
</tr>
<tr class="even">
<td>4</td>
<td>Jacket</td>
<td><blockquote>
<p>Grey Fashion Jacket - Womens</p>
</blockquote></td>
<td>3876</td>
<td>1</td>
</tr>
<tr class="odd">
<td>5</td>
<td>Shirt</td>
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>3819</td>
<td>1</td>
</tr>
<tr class="even">
<td>6</td>
<td>Socks</td>
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td>3792</td>
<td>1</td>
</tr>
</tbody>
</table>

4.  **What is the total quantity, revenue and discount for each
    category? SELECT**

> p.category_id, p.category_name,
>
> SUM(s.qty) AS Total_quantity,
>
> SUM(s.qty \* s.price) AS Total_revenue,
>
> ROUND(SUM((s.price \* s.qty) \* s.discount / 100), 2) AS
> Total_discounts FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.category_id, p.category_name;

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 21%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>category_id</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>category_name</strong></p>
</blockquote></th>
<th><strong>Total_quantity</strong></th>
<th><strong>Total_revenue</strong></th>
<th><blockquote>
<p><strong>Total_discounts</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><blockquote>
<p>Womens</p>
</blockquote></td>
<td>22734</td>
<td>575333</td>
<td>69621.43</td>
</tr>
<tr class="even">
<td>2</td>
<td>Mens</td>
<td>22482</td>
<td>714120</td>
<td>86607.71</td>
</tr>
</tbody>
</table>

5.  **What is the top selling product for each category?**

> SELECT
>
> category_id, category_name, product_name, total_quantity
>
> FROM (
>
> SELECT
>
> p.category_id, p.category_name, p.product_name,
>
> SUM(s.qty) AS total_quantity,
>
> RANK() OVER (PARTITION BY p.category_id ORDER BY SUM(s.qty) DESC) AS
> rnk FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.category_id, p.category_name, p.product_name
>
> ) AS top_selling_product WHERE
>
> rnk = 1;

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 20%" />
<col style="width: 43%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>category_id</strong></th>
<th><blockquote>
<p><strong>category_name</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><strong>Total_quantity</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><blockquote>
<p>Womens</p>
</blockquote></td>
<td><blockquote>
<p>Grey Fashion Jacket - Womens</p>
</blockquote></td>
<td>3876</td>
</tr>
<tr class="even">
<td>2</td>
<td><blockquote>
<p>Mens</p>
</blockquote></td>
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>3819</td>
</tr>
</tbody>
</table>

6.  **What is the percentage split of revenue by product for each
    > segment?**

> SELECT
>
> product_id, product_name, segment_id,
>
> segment_name,
>
> segment_total_revenue,
>
> ROUND(segment_total_revenue / SUM(segment_total_revenue) OVER
> (PARTITION BY segment_id)
>
> \* 100, 2) AS revenue_percentage FROM
>
> (
>
> SELECT
>
> p.product_id, p.product_name, p.segment_id, p.segment_name,
>
> SUM(s.qty \* s.price) AS segment_total_revenue FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.product_id, p.product_name, p.segment_id, p.segment_name
>
> ) AS sub;

<table style="width:100%;">
<colgroup>
<col style="width: 12%" />
<col style="width: 30%" />
<col style="width: 12%" />
<col style="width: 16%" />
<col style="width: 16%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>product_id</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>product_name</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>segment_id</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>segment_name</strong></p>
</blockquote></th>
<th><p><strong>segment_total_</strong></p>
<p><strong>revenue</strong></p></th>
<th><blockquote>
<p><strong>revenue_</strong></p>
<p><strong>percentage</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>c4a632</td>
<td><blockquote>
<p>Navy Oversized Jeans -</p>
<p>Womens</p>
</blockquote></td>
<td>3</td>
<td>Jeans</td>
<td>50128</td>
<td><blockquote>
<p>24.06</p>
</blockquote></td>
</tr>
<tr class="even">
<td>e31d39</td>
<td><blockquote>
<p>Cream Relaxed Jeans -</p>
<p>Womens</p>
</blockquote></td>
<td>3</td>
<td>Jeans</td>
<td>37070</td>
<td><blockquote>
<p>17.79</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>e83aa3</p>
</blockquote></td>
<td><blockquote>
<p>Black Straight Jeans - Womens</p>
</blockquote></td>
<td>3</td>
<td>Jeans</td>
<td>121152</td>
<td><blockquote>
<p>58.15</p>
</blockquote></td>
</tr>
<tr class="even">
<td>72f5d4</td>
<td><blockquote>
<p>Indigo Rain Jacket - Womens</p>
</blockquote></td>
<td>4</td>
<td>Jacket</td>
<td>71383</td>
<td><blockquote>
<p>19.45</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>d5e9a6</td>
<td><blockquote>
<p>Khaki Suit Jacket - Womens</p>
</blockquote></td>
<td>4</td>
<td>Jacket</td>
<td>86296</td>
<td><blockquote>
<p>23.51</p>
</blockquote></td>
</tr>
<tr class="even">
<td>9ec847</td>
<td><blockquote>
<p>Grey Fashion Jacket - Womens</p>
</blockquote></td>
<td>4</td>
<td>Jacket</td>
<td>209304</td>
<td><blockquote>
<p>57.03</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>5d267b</td>
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td>5</td>
<td>Shirt</td>
<td>152000</td>
<td><blockquote>
<p>37.43</p>
</blockquote></td>
</tr>
<tr class="even">
<td>2a2353</td>
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>5</td>
<td>Shirt</td>
<td>217683</td>
<td><blockquote>
<p>53.6</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>c8d436</td>
<td><blockquote>
<p>Teal Button Up Shirt - Mens</p>
</blockquote></td>
<td>5</td>
<td>Shirt</td>
<td>36460</td>
<td><blockquote>
<p>8.98</p>
</blockquote></td>
</tr>
<tr class="even">
<td>b9a74d</td>
<td><blockquote>
<p>White Striped Socks - Mens</p>
</blockquote></td>
<td>6</td>
<td><blockquote>
<p>Socks</p>
</blockquote></td>
<td>62135</td>
<td><blockquote>
<p>20.18</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>2feb6b</p>
</blockquote></td>
<td><blockquote>
<p>Pink Fluro Polkadot Socks -</p>
<p>Mens</p>
</blockquote></td>
<td>6</td>
<td><blockquote>
<p>Socks</p>
</blockquote></td>
<td>109330</td>
<td><blockquote>
<p>35.5</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>f084eb</p>
</blockquote></td>
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td>6</td>
<td><blockquote>
<p>Socks</p>
</blockquote></td>
<td>136512</td>
<td><blockquote>
<p>44.33</p>
</blockquote></td>
</tr>
</tbody>
</table>

7.  **What is the percentage split of revenue by segment for each
    > category?**

> SELECT
>
> category_id, category_name, segment_id,
>
> segment_name, total_revenue,
>
> ROUND(total_revenue / SUM(total_revenue) OVER (PARTITION BY
> category_id) \* 100, 2) AS revenue_percentage
>
> FROM (
>
> SELECT
>
> p.category_id, p.category_name, p.segment_id, p.segment_name,
>
> SUM(s.qty \* s.price) AS total_revenue FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.category_id, p.category_name, p.segment_id, p.segment_name
>
> ) AS sub;

<table>
<colgroup>
<col style="width: 13%" />
<col style="width: 16%" />
<col style="width: 13%" />
<col style="width: 16%" />
<col style="width: 17%" />
<col style="width: 23%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>category_id</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>category_name</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>segment_id</strong></p>
</blockquote></th>
<th><strong>segment_name</strong></th>
<th><blockquote>
<p><strong>Total_revenue</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Revenue_percentage</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><blockquote>
<p>Womens</p>
</blockquote></td>
<td>3</td>
<td>Jeans</td>
<td><blockquote>
<p>208350</p>
</blockquote></td>
<td><blockquote>
<p>36.21</p>
</blockquote></td>
</tr>
<tr class="even">
<td>1</td>
<td><blockquote>
<p>Womens</p>
</blockquote></td>
<td>4</td>
<td>Jacket</td>
<td><blockquote>
<p>366983</p>
</blockquote></td>
<td><blockquote>
<p>63.79</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>2</td>
<td>Mens</td>
<td>5</td>
<td>Shirt</td>
<td><blockquote>
<p>406143</p>
</blockquote></td>
<td><blockquote>
<p>56.87</p>
</blockquote></td>
</tr>
<tr class="even">
<td>2</td>
<td>Mens</td>
<td>6</td>
<td>Socks</td>
<td><blockquote>
<p>307977</p>
</blockquote></td>
<td><blockquote>
<p>43.13</p>
</blockquote></td>
</tr>
</tbody>
</table>

8.  **What is the percentage split of total revenue by category?**

> SELECT
>
> category_id, category_name, total_revenue,
>
> ROUND(total_revenue / SUM(total_revenue) OVER () \* 100, 2) AS
> revenue_percentage FROM (
>
> SELECT
>
> p.category_id, p.category_name,
>
> SUM(s.qty \* s.price) AS total_revenue FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.category_id, p.category_name
>
> ) AS sub;

<table style="width:100%;">
<colgroup>
<col style="width: 19%" />
<col style="width: 24%" />
<col style="width: 23%" />
<col style="width: 32%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>category_id</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>category_name</strong></p>
</blockquote></th>
<th><strong>Total_revenue</strong></th>
<th><blockquote>
<p><strong>Revenue_percentage</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><blockquote>
<p>Womens</p>
</blockquote></td>
<td>575333</td>
<td>44.62</td>
</tr>
<tr class="even">
<td>2</td>
<td>Mens</td>
<td>714120</td>
<td>55.38</td>
</tr>
</tbody>
</table>

9.  **What is the total transaction “penetration” for each product?**

> SELECT
>
> product_name,
>
> number_of_items_sold,
>
> ROUND(number_of_items_sold / total_transactions \* 100, 2) AS
> product_percentage FROM (
>
> SELECT
>
> p.product_id, p.product_name,
>
> COUNT(s.qty) AS number_of_items_sold,
>
> (SELECT COUNT(DISTINCT txn_id) FROM sales) as total_transactions FROM
>
> product_details p JOIN
>
> sales s ON s.prod_id = p.product_id GROUP BY
>
> p.product_id, p.product_name
>
> ) AS sub;

<table>
<colgroup>
<col style="width: 42%" />
<col style="width: 30%" />
<col style="width: 26%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Product_name</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Number_of_items_sold</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Product_percentage</strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Navy Oversized Jeans - Womens</td>
<td>1274</td>
<td><blockquote>
<p>50.96</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>White Tee Shirt - Mens</p>
</blockquote></td>
<td>1268</td>
<td><blockquote>
<p>50.72</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>White Striped Socks - Mens</p>
</blockquote></td>
<td>1243</td>
<td><blockquote>
<p>49.72</p>
</blockquote></td>
</tr>
<tr class="even">
<td>Pink Fluro Polkadot Socks - Mens</td>
<td>1258</td>
<td><blockquote>
<p>50.32</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Cream Relaxed Jeans - Womens</td>
<td>1243</td>
<td><blockquote>
<p>49.72</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Indigo Rain Jacket - Womens</p>
</blockquote></td>
<td>1250</td>
<td><blockquote>
<p>50</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Blue Polo Shirt - Mens</p>
</blockquote></td>
<td>1268</td>
<td><blockquote>
<p>50.72</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Navy Solid Socks - Mens</p>
</blockquote></td>
<td>1281</td>
<td><blockquote>
<p>51.24</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Black Straight Jeans - Womens</td>
<td>1246</td>
<td><blockquote>
<p>49.84</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Khaki Suit Jacket - Womens</p>
</blockquote></td>
<td>1247</td>
<td><blockquote>
<p>49.88</p>
</blockquote></td>
</tr>
<tr class="odd">
<td>Grey Fashion Jacket - Womens</td>
<td>1275</td>
<td><blockquote>
<p>51</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Teal Button Up Shirt - Mens</p>
</blockquote></td>
<td>1242</td>
<td><blockquote>
<p>49.68</p>
</blockquote></td>
</tr>
</tbody>
</table>

**Conclusion:**

The Balanced Tree Clothing Sales Analysis project provides valuable
insights into sales performance, customer behaviour, and product
popularity. By leveraging SQL queries and database management, the
project enables stakeholders to make informed decisions to optimize
sales strategies, product offerings, and customer experiences.
