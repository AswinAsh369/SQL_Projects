-- FLIGHT TICKET PRICE PREDICTION --

SELECT * FROM flight.clean_dataset;

-- 1. Retrieve the minimum, maximum, and average price for flights departing from Delhi
SELECT MIN(price), MAX(price), AVG(price) FROM flight.clean_dataset WHERE source_city = 'Delhi';

-- 2. Retrieve the number of flights for each airline
SELECT airline, COUNT(*) FROM flight.clean_dataset GROUP BY airline;

-- 3. Retrieve the number of flights departing from each city
SELECT source_city, COUNT(*) FROM flight.clean_dataset GROUP BY source_city;

-- 4. Retrieve the number of flights departing from each city, where the price is greater than 10,000
SELECT source_city, COUNT(*) FROM flight.clean_dataset WHERE price > 10000 GROUP BY source_city;

-- 5. Retrieve the average price for flights departing from each city, where the duration of the flight is greater than 5 hours
SELECT source_city, AVG(price) FROM flight.clean_dataset WHERE duration > 5 GROUP BY source_city;

-- 6. Retrieve the top 5 most expensive flights
SELECT * FROM flight.clean_dataset ORDER BY price DESC LIMIT 5;

-- 7.Retrieve the top 5 most popular routes (source to destination) along with the total number of flights 
SELECT source_city, destination_city, COUNT(*) as total_flights 
FROM flight.clean_dataset 
GROUP BY source_city, destination_city 
ORDER BY total_flights DESC LIMIT 5;

-- 8. Retrieve the top 10 routes with the highest average flight prices
SELECT source_city, destination_city, AVG(price) as avg_price 
FROM flight.clean_dataset 
GROUP BY source_city, destination_city 
ORDER BY avg_price DESC LIMIT 10;

-- 9. Retrieve the number of flights for each duration range (in hours)
SELECT FLOOR(duration) as duration_range, COUNT(*) as total_flights 
FROM flight.clean_dataset  
GROUP BY duration_range;

-- 10. Retrieve the number of Economy and Business Class flights for each airline
SELECT airline, 
       SUM(CASE WHEN class = 'Economy' THEN 1 ELSE 0 END) as total_economy_flights, 
       SUM(CASE WHEN class = 'Business' THEN 1 ELSE 0 END) as total_business_flights 
FROM flight.clean_dataset 
GROUP BY airline;

-- 11. Retrieve the average price for flights on weekends (Saturday and Sunday) and weekdays (Monday to Friday)
SELECT CASE 
         WHEN DAYOFWEEK(date_of_journey) IN (1,7) THEN 'Weekend' 
         ELSE 'Weekday' 
       END as day_type, 
       AVG(price) 
FROM flights 
GROUP BY day_type;
















