-- Change the name of tables for better clarity
BEGIN TRANSACTION
EXEC sp_rename 'BrazilianECommerce.dbo.olist_geolocation_dataset', 'geolocation';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_customers_dataset', 'customers';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_order_items_dataset', 'order_items';

SELECT *
FROM [BrazilianECommerce].[dbo].[geolocation]

SELECT *
FROM [BrazilianECommerce].[dbo].[customers]

SELECT *
FROM [BrazilianECommerce].[dbo].[order_items]

COMMIT TRANSACTION --ROLLBACK TRANSACTION

--
SELECT *
FROM BrazilianECommerce.dbo.geolocation

-- Clean NULL values in [geolocation] table
SELECT *
FROM BrazilianECommerce.dbo.geolocation
WHERE 1 IS NULL
	OR 2 IS NULL
	OR 3 IS NULL
	OR 4 IS NULL
	OR 5 IS NULL --no NULL value detected

-- Delete duplicate rows in [geolocation] table
BEGIN TRANSACTION;
WITH DuplicateRemove AS
(
	SELECT
		geolocation_zip_code_prefix
		, geolocation_lat
		, geolocation_lng
		, geolocation_city
		, geolocation_state
		, ROW_NUMBER() OVER (PARTITION BY geolocation_zip_code_prefix, geolocation_lat, geolocation_lng ORDER BY (SELECT NULL)) as rn
		--SELECT(NULL) works as a placeholder for syntax requirement since the order of duplicates is in no need. 
	FROM
		BrazilianECommerce.dbo.geolocation
)
	--SELECT *
	--FROM DuplicateRemove
	--WHERE rn>1
DELETE FROM DuplicateRemove
WHERE rn>1

COMMIT TRANSACTION  --SELECT @@TRANCOUNT

-- Sucessfully set a composite primary key for .geolocation (column 1 and 2 and 3)
-- Sucessfully set a composite primary key for .order_items (column 1 and 2 and 3)
-- Sucessfully set a primary key for .customers (customer_id)

-- Clean NULL values in [order_items] table
SELECT *
FROM BrazilianECommerce.dbo.order_items
WHERE 
	1 IS NULL
	OR 2 IS NULL
	OR 3 IS NULL
	OR 4 IS NULL
	OR 5 IS NULL
	OR 6 IS NULL
	OR 7 IS NULL  --no NULL value detected

-- Clean NULL values in [customers] table
SELECT *
FROM [BrazilianECommerce].[dbo].[customers]
WHERE 
	1 IS NULL
	OR 2 IS NULL
	OR 3 IS NULL
	OR 4 IS NULL
	OR 5 IS NULL  --no NULL value detected

-- Change the name of tables for better clarity
BEGIN TRANSACTION
EXEC sp_rename 'BrazilianECommerce.dbo.olist_order_payments_dataset', 'order_payments';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_order_reviews_dataset', 'order_reviews';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_orders_dataset', 'orders';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_products_dataset', 'products';
EXEC sp_rename 'BrazilianECommerce.dbo.olist_sellers_dataset', 'sellers';

SELECT TOP 100 *
FROM [BrazilianECommerce].[dbo].[order_payments]

COMMIT TRANSACTION


