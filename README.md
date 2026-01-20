# Hotel Bookings ETL & Analytics Pipeline

## 📌 Overview
End-to-end data analytics project demonstrating a modern ETL pipeline using **Azure Data Factory, Azure SQL Database, and Power BI**.

The project ingests raw booking data from Azure Blob Storage, applies data cleaning and type casting in SQL, and exposes a clean fact table for business reporting.

---

## 🏗️ Architecture
CSV → Azure Blob Storage  
→ Azure Data Factory (Copy Activity)  
→ Azure SQL Database (staging & fact tables)  
→ Power BI Dashboard

---

## 🔄 ETL Flow
1. Raw booking data stored as CSV in Azure Blob Storage
2. Azure Data Factory copies data into `stg_bookings`
3. SQL transformation layer:
   - String → Date / Decimal casting
   - Clean fact table creation
4. Power BI consumes `fact_bookings` for analytics

---

## 🧱 Data Model
**fact_bookings**
- booking_id
- booking_date
- customer_name
- amount

---

## 📊 Dashboard KPIs
- Total Revenue
- Booking Count
- Average Booking Amount
- Revenue by Customer

---

## 🛠️ Tech Stack
- Azure Data Factory
- Azure SQL Database
- Power BI
- SQL (T-SQL)

---

## 🎯 Key Skills Demonstrated
- Cloud ETL pipelines
- SQL data modeling
- Data cleaning & type casting
- Power BI dashboarding
- End-to-end analytics workflow

---

## 📸 Sample Dashboard
![Dashboard](/hotel-bookings-etl-azure-powerbi/powerbi/pipeline_ingest_blob_to_sql.png)

