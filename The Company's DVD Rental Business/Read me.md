# Data Analysis for Movie Rental Business

## 1. Introduction:
The purpose of this project is to provide comprehensive data analysis solutions to address various business queries and requirements of a movie rental business. The project involves writing SQL queries to extract relevant data from the database to assist different departments such as marketing, finance, accounts, and digital marketing in making informed decisions and formulating strategies.

## 2. Objectives:
- Extract email IDs, first names, and last names of customers in store ID 2 for email campaign targeting.
- Identify the count of movies rented out for $0.99 for financial audit purposes.
- Determine the number of movies rented at different rental price points to aid accounting department decisions.
- Analyze the spread of movies across different ratings for marketing insights.
- Provide insights into the distribution of ratings for each store in the dataset for marketing team.
- Retrieve details on film names, categories, and languages for competitive analysis.
- Analyze movie popularity, revenue per movie, store-wise revenue, and customer spending patterns.
- Provide insights into customer loyalty and rental trends for strategic initiatives planning.

## 3. Methodology:
- SQL queries were written to fetch required data from the database.
- Each query was designed to address a specific business question or requirement.
- Queries were tested to ensure accuracy and efficiency in retrieving data.

## 4. Results:
- **Email Campaign Data Retrieval:**
  - Retrieved email IDs, first names, and last names of customers in store ID 2.
    - Syntax:
      ```
      SELECT first_name, last_name, email FROM customer WHERE store_id = 2;
      ```

- **DVDs Rental Rate Analysis:**
  - Identified the count of movies rented out for $0.99.
    - Syntax:
      ```
      SELECT COUNT(film_id) FROM film WHERE rental_rate = 0.99;
      ```

- **Analysis for Accounting Purposes:**
  - Determined the number of movies rented at different rental price points.
    - Syntax:
      ```
      SELECT rental_rate, COUNT(film_id) AS TOTAL_NO_FILMS FROM film GROUP BY rental_rate;
      ```

- **Movie Ratings Analysis:**
  - Provided insights into the spread of movies across different ratings.
    - Syntax:
      ```
      SELECT rating, COUNT(film_id) AS TOTAL_NO_FILMS FROM film GROUP BY rating;
      ```

- **Store-wise Rating Distribution:**
  - Analyzed the distribution of ratings for each store in the dataset.
    - Syntax:
      ```
      SELECT b.store_id, a.rating, COUNT(a.film_id) AS TOTAL_NO_FILMS
      FROM film a
      JOIN inventory b ON a.film_id = b.film_id
      GROUP BY b.store_id, a.rating;
      ```

- **Competitive Analysis of Movie Rentals:**
  - Retrieved details on film names, categories, and languages for comparative analysis.
    - Syntax:
      ```
      SELECT f.title, c.name, l.name
      FROM film f
      JOIN film_category fc ON fc.film_id = f.film_id
      JOIN category c ON fc.category_id = c.category_id
      JOIN language l ON l.language_id = f.language_id;
      ```

- **Revenue and Popularity Analysis:**
  - Analyzed the number of rentals, revenue per movie, store-wise revenue, and customer spending patterns.
    - **Number of times each movie is rented out:**
      ```
      SELECT f.title, COUNT(r.rental_id) AS no_of_rented
      FROM film f
      JOIN inventory i ON f.film_id = i.film_id
      JOIN rental r ON r.inventory_id = i.inventory_id
      GROUP BY f.title
      ORDER BY no_of_rented DESC;
      ```
    - **Revenue per movie:**
      ```
      SELECT f.film_id, f.title, SUM(p.amount) AS total_revenue
      FROM film f
      JOIN inventory i ON f.film_id = i.film_id
      JOIN rental r ON i.inventory_id = r.inventory_id
      JOIN payment p ON p.rental_id = r.rental_id
      GROUP BY f.film_id, f.title
      ORDER BY total_revenue DESC;
      ```
    - **Most revenue earned by a store:**
      ```
      SELECT s.store_id, SUM(p.amount) AS "Total Spending"
      FROM store s
      JOIN inventory i ON i.store_id = s.store_id
      JOIN rental r ON r.inventory_id = i.inventory_id
      JOIN payment p ON p.rental_id = r.rental_id
      GROUP BY 1
      ORDER BY 2 DESC;
      ```
    - **Customer who has spent the most:**
      ```
      SELECT c.id, c.name, SUM(p.amount) AS Total_sales1
      FROM customer_list c
      JOIN payment p ON p.customer_id = c.id
      GROUP BY c.id, c.name
      ORDER BY Total_sales1 DESC
      LIMIT 1;
      ```

- **Loyalty and Reward Program Insights:**
  - Provided insights into customer loyalty, revenue per month, rental trends, and revenue from specific rating categories.
    - **Last Rental Date of every customer:**
      ```
      SELECT c.id, c.name, MAX(r.rental_date) AS last_rental_date
      FROM customer_list c
      JOIN rental r ON r.customer_id = c.id
      GROUP BY c.id, c.name
      ORDER BY id;
      ```
    - **Total Revenue Per Month:**
      ```
      SELECT STRFTIME("%m", rental_date) AS month, SUM(amount) AS "total revenue"
      FROM payment p
      JOIN rental r ON p.customer_id = r.customer_id
      GROUP BY month;
      ```
    - **Number of distinct Renters per month:**
      ```
      SELECT STRFTIME("%m", rental_date) AS "Month",
      COUNT(DISTINCT rental_id) AS "Total Rentals",
      COUNT(DISTINCT customer_id) AS "Number Of Unique Renter"
      FROM rental
      GROUP BY 1;
      ```
    - **Number of Distinct Film Rented Each Month:**
      ```
      SELECT i.film_id, f.title, STRFTIME("%m", r.rental_date) AS "Month",
      COUNT(i.film_id) AS "Total Number Of Rental Times"
      FROM rental r
      JOIN inventory i ON r.inventory_id = i.inventory_id
      JOIN film f ON f.film_id = i.film_id
      GROUP BY i.film_id, STRFTIME("%m", r.rental_date)
      ORDER BY 1, 2, 3;
      ```
    - **Number of Rentals in Comedy, Sports, and Family:**
      ```
      SELECT c.name, COUNT(c.name) AS "Number of Rentals"
      FROM film f
      JOIN film_category fc ON fc.film_id = f.film_id
      JOIN category c ON c.category_id = fc.category_id
      JOIN inventory i ON f.film_id = i.film_id;
      ```

## 5. Conclusion:
The project successfully addressed various business queries and requirements through SQL queries, providing valuable insights for decision-making across different departments. The extracted data and analysis results can be utilized by the business to optimize operations, improve customer engagement, and drive strategic
