-- Part A: High Level Sales Analysis

-- 1a. What was the total quantity sold for all products?

select sum(qty) as Total_quantity from sales;

-- 1b. What was the total quantity sold for EACH product?

SELECT p.product_name,sum(s.qty) as Total_quantity  from product_details p join sales s on p.product_id = s.prod_id group by p.product_name;

-- 2a. What is the total generated revenue for all products before discounts?

select sum(qty * price ) as Total_revenue from sales;

-- 2b. What is the total generated revenue for EACH product before discounts?

SELECT p.product_name,sum(s.qty * s.price ) as Total_revenue from product_details p join sales s on p.product_id = s.prod_id group by p.product_name order by total_revenue desc;

-- 3a. What was the total discount amount for all products?

SELECT ROUND(SUM((price * qty) * discount/ 100), 2) AS Total_discounts FROM sales;

--  3b. What is the total discount for EACH product? I will include total item revenue with this query.

SELECT p.product_name,sum(s.qty * s.price ) as Total_revenue,ROUND(SUM((s.price * s.qty) * discount/ 100), 2) AS Total_discounts  from product_details p join sales s on p.product_id = s.prod_id group by p.product_name order by total_discounts desc;

--  Part B: Transaction Analysis
--  1. How many unique transactions were there?

select count(distinct(txn_id)) as unique_transactions from sales;

--  2. What is the average unique products purchased in each transaction? I believe this is another oddly worded question. I interpret this question to ask "What is the average NUMBER/COUNT OF unique items purchased per transaction?"

SELECT ROUND(AVG(unique_item)) AS Avg_number_of_items FROM (SELECT COUNT(DISTINCT(prod_id)) unique_item FROM sales GROUP BY txn_id) AS counts;

--  3. What are the 25th, 50th and 75th percentile values for the revenue per transaction?

SELECT 
    (SELECT revenue
     FROM (
           SELECT revenue, 
                  ROW_NUMBER() OVER (ORDER BY revenue) AS rn, 
                  COUNT(*) OVER () AS cnt
           FROM (SELECT ROUND(SUM(price * qty), 2) AS revenue 
                 FROM sales 
                 GROUP BY txn_id) AS get_revenue
          ) AS sub
     WHERE rn = CEIL(0.25 * cnt)) AS percentile_25,
     (SELECT revenue
     FROM (
           SELECT revenue, 
                  ROW_NUMBER() OVER (ORDER BY revenue) AS rn, 
                  COUNT(*) OVER () AS cnt
           FROM (SELECT ROUND(SUM(price * qty), 2) AS revenue 
                 FROM sales 
                 GROUP BY txn_id) AS get_revenue
          ) AS sub
     WHERE rn = CEIL(0.5 * cnt)) AS percentile_50,
     (SELECT revenue
     FROM (
           SELECT revenue, 
                  ROW_NUMBER() OVER (ORDER BY revenue) AS rn, 
                  COUNT(*) OVER () AS cnt
           FROM (SELECT ROUND(SUM(price * qty), 2) AS revenue 
                 FROM sales 
                 GROUP BY txn_id) AS get_revenue
          ) AS sub
     WHERE rn = CEIL(0.75 * cnt)) AS percentile_75
     
     
     
-- 4. What is the average discount value per transaction?

select round(avg(total_discounts),2) AS Avg_Total_discount from (select txn_id,ROUND(SUM((price * qty) * discount/ 100), 2) AS total_discounts  from sales group by txn_id) as ext
  
-- 5. What is the percentage split of all transactions for members vs non-members?

SELECT 
    round((SELECT COUNT(membe) FROM sales WHERE membe = 't') / (SELECT COUNT(membe) FROM sales) * 100,0) AS member_percentage,
    round((SELECT COUNT(membe) FROM sales WHERE membe = 'f') / (SELECT COUNT(membe) FROM sales) * 100,0) AS non_member_percentage
FROM sales;
 

-- 6. What is the average revenue for member transactions and non-member transactions?
select membe,sum(qty*price) as revenue from sales group by membe
  
  
  
-- Part C: Product Analysis
-- 1. What are the top 3 products by total revenue before discount?

select p.Product_name,sum(s.price * s.qty) as Total_revenue from product_details p join sales s on s.prod_id = p.product_id group by 1 order by total_revenue desc limit 3;
  
-- 2. What is the total quantity, revenue and discount for each segment?
  
SELECT 
    p.segment_id,
    p.segment_name,
    SUM(s.qty) AS Total_quantity,
    SUM(s.qty * s.price) AS Total_revenue,
    ROUND(SUM((s.price * s.qty) * s.discount / 100), 2) AS Total_discounts
FROM 
    product_details p 
JOIN 
    sales s ON s.prod_id = p.product_id 
GROUP BY 
    p.segment_id, p.segment_name;

 
-- 3. What is the top selling product for each segment?

  select segment_id,segment_name,product_name,total_quantity,rnk from (
  select p.segment_id,
	     p.segment_name,
         p.product_name,
         SUM(s.qty) as Total_quantity,
         rank() over(partition by p.segment_id order by SUM(s.qty) DESC) AS Rnk 
         from product_details p 
         join sales s  ON s.prod_id = p.product_id 
  GROUP BY
      p.segment_id,p.segment_name,p.product_name) as ranked_data where  rnk = 1;

  
-- 4. What is the total quantity, revenue and discount for each category?

  select 
       p.category_id,
       p.category_name,
       SUM(s.qty) AS total_quantity,
	   SUM(s.qty * s.price) AS total_revenue,
	   round(SUM((s.price * s.qty) * s.discount/ 100),2) AS total_discounts
       from product_details p join sales s 
	   ON s.prod_id = p.product_id 
       GROUP BY
       p.category_id,p.category_name;

-- 5. What is the top selling product for each category?

  select category_id,category_name,product_name,total_quantity from (select 
	p.category_id,
    p.category_name, 
    p.product_name,
    sum(s.qty) as total_quantity,
    rank() over(partition by p.category_id order by sum(s.qty) desc) as rnk
    from product_details p join sales s 
	   ON s.prod_id = p.product_id 
       GROUP BY
       p.category_id,p.category_name,p.product_name) as top_selling_product
       where rnk =1;

-- 6. What is the percentage split of revenue by product for each segment?

SELECT 
    product_id,
    product_name,
    segment_id,
    segment_name,
    segment_total_revenue,
    round(segment_total_revenue/sum(segment_total_revenue) over(partition by segment_id) *100 ,2) as revenue_percentage
FROM (
    SELECT 
        p.product_id,
        p.product_name,
        p.segment_id,
        p.segment_name,
        SUM(s.qty * s.price) AS segment_total_revenue
    FROM 
        product_details p 
    JOIN 
        sales s ON s.prod_id = p.product_id 
    GROUP BY
        p.product_id, p.product_name, p.segment_id, p.segment_name
) AS sub;
 
-- 7. What is the percentage split of revenue by segment for each category?
What is the percentage split of revenue by product for each segment?

SELECT 
    category_id,
    category_name,
    segment_id,
    segment_name,
    total_revenue,
    round(total_revenue/sum(total_revenue) over(partition by category_id) *100 ,2) as revenue_percentage
FROM (
    SELECT 
        p.category_id,
        p.category_name,
        p.segment_id,
        p.segment_name,
        SUM(s.qty * s.price) AS total_revenue
    FROM 
        product_details p 
    JOIN 
        sales s ON s.prod_id = p.product_id 
    GROUP BY
         p.category_id,p.category_name, p.segment_id, p.segment_name
) AS sub; 
  
-- 8. What is the percentage split of total revenue by category?

SELECT 
    category_id,
    category_name,
    total_revenue,
    round(total_revenue/sum(total_revenue) over() *100 ,2) as revenue_percentage
FROM (
    SELECT 
        p.category_id,
        p.category_name,
        SUM(s.qty * s.price) AS total_revenue
    FROM 
        product_details p 
    JOIN 
        sales s ON s.prod_id = p.product_id 
    GROUP BY
         p.category_id,p.category_name
) AS sub;  

-- 9. What is the total transaction “penetration” for each product?

SELECT 
    product_name,
    number_of_items_sold,
    round(number_of_items_sold / total_transactions * 100,2) AS product_percentage
FROM (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(s.qty) AS number_of_items_sold,
        (SELECT COUNT(DISTINCT txn_id) FROM sales) as total_transactions
    FROM 
        product_details p 
    JOIN 
        sales s ON s.prod_id = p.product_id 
    GROUP BY
        p.product_id,p.product_name
) AS sub;
