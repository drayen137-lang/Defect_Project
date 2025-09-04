# Manufacturing Defect Analytics – Data Warehouse & Dashboard

![License](https://img.shields.io/badge/License-MIT-green)
![Tech](https://img.shields.io/badge/ETL-SSIS%20%7C%20Python-blue)
![Database](https://img.shields.io/badge/Database-SQL%20Server%20%7C%20SQLite-orange)
![Dashboard](https://img.shields.io/badge/BI-Looker%20Studio-purple)

This project is an anonymized adaptation of my **Final Year Project (PFE)**:  
**“Development of a Decision-Making Solution for Defective Parts Analysis”**  

It demonstrates my ability to design and implement a **full Business Intelligence pipeline** using the **Kimball methodology**, from data collection to visualization.

---

## 🚀 Problem Statement
In manufacturing, detecting and analyzing defective parts is essential to ensure product quality and reduce costs.  
Before this project, defect data was collected manually and scattered, making it difficult to:

- Identify recurring issues across production lines  
- Monitor defect trends over time  
- Provide actionable KPIs for managers  

---

## 💡 Solution
The project implements a **decision-making BI solution** with the following components:

1. **Data Source**: Operators enter defect reports via **Google Forms/Sheets**  
2. **ETL Pipeline**:  
   - Built in **SSIS** (SQL Server Integration Services)  
   - Extracts raw form data, cleans it, and loads it into the warehouse  
   - Demo version in **Python/SQLite** (synthetic data)  
3. **Data Warehouse**:  
   - Modeled with **Kimball star schema**  
   - **Fact table**: `FaitDefaults` (defect events)  
   - **Dimensions**: Date, Line, Workstation, Defect Type, Reporter  
4. **Visualization**:  
   - Dashboards in **Looker Studio** with KPIs:  
     - Total Defects & Defect Rate %  
     - Top 5 Lines by Defects  
     - Top 5 Defect Types  
     - Trends over time  
     - Reporter/Shift analysis  
5. **Web Layer (Optional)**:  
   - MVC prototype using **XAMPP** to view KPIs in a simple web interface  

---

## 🧭 Architecture & Data Model

### Architecture Diagram
![Architecture Diagram](Images/Diagram.png)

### Data Warehouse Star Schema
![Star Schema Diagram](Images/Model.png)

---

## 📂 Project Structure
