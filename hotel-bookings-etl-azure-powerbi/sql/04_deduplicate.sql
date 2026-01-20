TRUNCATE TABLE dbo.fact_bookings;

WITH dedup AS (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY booking_id, booking_date, customer_name, amount
           ORDER BY (SELECT 1)
         ) AS rn
  FROM dbo.stg_bookings
)
INSERT INTO dbo.fact_bookings (booking_id, booking_date, customer_name, amount)
SELECT
  booking_id,
  TRY_CONVERT(date, booking_date, 23),
  customer_name,
  TRY_CONVERT(decimal(18,2), REPLACE(amount, ',', '.'))
FROM dedup
WHERE rn = 1;
