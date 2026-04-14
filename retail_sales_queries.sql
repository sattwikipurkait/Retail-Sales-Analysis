SELECT *
FROM retail_sales_dataset;

SELECT COUNT(*)`Transaction ID`
FROM retail_sales_dataset;

SELECT SUM(`Price per Unit`* Quantity) AS total_revenue
FROM retail_sales_dataset;

SELECT DISTINCT `Product Category`
FROM retail_sales_dataset;

SELECT DISTINCT `Product Category`, `Customer ID`, Age, Gender
FROM retail_sales_dataset;

SELECT *
FROM retail_sales_dataset
WHERE `Product Category`= 'Beauty';

SELECT `Product Category`, SUM(`Price per Unit`* Quantity) AS total_revenue
FROM retail_sales_dataset
GROUP BY `Product Category`;

SELECT Gender, AVG(Age)
FROM retail_sales_dataset
GROUP BY Gender;

SELECT `Transaction ID`, `Total Amount`
FROM retail_sales_dataset
ORDER BY `Total Amount` DESC
LIMIT 5;

SELECT `Product Category`, MAX(`Total Amount`) AS max_amount
FROM retail_sales_dataset
GROUP BY `Product Category`;

SELECT Gender, AVG(Age) AS avg_age
FROM retail_sales_dataset
GROUP BY Gender;

SELECT Gender, `Product Category`, SUM(`Total Amount`) AS total_sales
FROM retail_sales_dataset
WHERE Gender= 'Female'
GROUP BY `Product Category`, Gender
ORDER BY total_sales DESC
LIMIT 1;

SELECT MONTH(Date) AS monthlysale, SUM(`Total Amount`) AS total_sales
FROM retail_sales_dataset
GROUP BY MONTH(Date)
ORDER BY total_sales DESC
LIMIT 1;

