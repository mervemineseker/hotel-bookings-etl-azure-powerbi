TRUNCATE TABLE dbo.fact_bookings;

INSERT INTO dbo.fact_bookings (booking_id, booking_date, customer_name, amount)
SELECT
  booking_id,
  TRY_CONVERT(date, booking_date, 23),
  customer_name,
  TRY_CONVERT(decimal(18,2), REPLACE(amount, ',', '.'))
FROM dbo.stg_bookings;
