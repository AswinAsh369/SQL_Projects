<h1>Sales_Insights_Atliq_Hardwares</h1>

<h3>Sales insights project Powerbi Dashboard</h3>

This project I learn from code basics youtube channel.

<h3>Problem Statement</h3>

AtliQ hardware is a company which delivers computer hardware & peripheral Manufacturers to his clients, which has several branches throughout India. The sales director of the company is facing a lot of issues in terms of understanding how the business is performing and what are all the problem company is facing currently as the sales are not as expected and declining gradually. And whenever he calls the regional managers to get the current status of the sales and market, as a human behaviour, these people Humans are not comfortable in consuming numbers from excel files, which is obvious reason for the frustration.

<h3>Solution</h3>

Sales director of the AltiQ hardware, decided to build a PowerBI Dashboard for converting the data into visual representation to make data driven decisions. So, he hired a team of data people to complete this task.

<h3>SQL Queries Used</h3>

1.Show all customer records.

SELECT * FROM customers; 
2.Show total number of customers.

SELECT count(*) FROM customers;
3.Show transactions for Chennai market (market code for chennai is Mark001).

SELECT * FROM transactions where market_code='Mark001'; 
4.Show distrinct product codes that were sold in chennai.

SELECT distinct product_code FROM transactions where market_code='Mark001';
5.Show transactions where currency is US dollars.

SELECT * from transactions where currency="USD";
6.Show transactions in 2020 join by date table.

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;
7.Show total revenue in year 2020.

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r"     or transactions.currency="USD\r";
8.Show total revenue in year 2020, January Month.

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January"     and (transactions.currency="INR\r" or transactions.currency="USD\r");
9.Show total revenue in year 2020 in Chennai.

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and tran
