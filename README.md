# SQL-Views
This repository contains SQL scripts - Creating and Using Views in MySQL.  It includes examples of filtering, grouping, calculations, date-based selection,  and security using views, along with sample data for demonstration.

## Description
This project demonstrates the creation and usage of **Views** in MySQL using a sample `Orders` table.  
It covers:
- Filtering records using views
- Performing calculations inside views
- Grouping data
- Date-based selections
- Hiding sensitive columns for security
- Modifying and dropping views
  
## Contents
1. **Table Creation & Data Insertion**
2. **7 View Examples**:
   - DeliveredOrders
   - HighValueOrders
   - OrdersByProduct
   - Orders2024
   - PublicOrdersInfo
   - PendingOrders
   - LatestOrders
3. **Using Views with SELECT**
4. **Modify & Drop View**
   
## Tools Used
- MySQL Workbench

## Output
The results of executing all seven views created in this project:
**Views Demonstrated:**
1. **DeliveredOrders** – Displays all delivered orders with their details.  
2. **HighValueOrders** – Orders having total value above ₹25,000.  
3. **OrdersByProduct** – Grouped list of products with total orders and quantities.  
4. **Orders2024** – Orders placed in the year 2024.  
5. **PublicOrdersInfo** – Public view without price for security.  
6. **PendingOrders** – Orders that are still pending.  
7. **LatestOrders** – Most recent two orders by date.
