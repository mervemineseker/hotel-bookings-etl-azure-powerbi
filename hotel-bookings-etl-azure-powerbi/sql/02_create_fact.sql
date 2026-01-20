CREATE TABLE dbo.fact_bookings (
  booking_id NVARCHAR(100) NOT NULL,
  booking_date DATE NULL,
  customer_name NVARCHAR(200) NULL,
  amount DECIMAL(18,2) NULL
);
