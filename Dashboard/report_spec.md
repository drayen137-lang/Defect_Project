# Looker Studio Report Spec (Rebuild Guide)

## Data Source
- Connect directly to your SQL Server / Azure SQL Database.  
- For demo purposes, you can also upload a synthetic CSV extract.

---

## Pages & Tiles

### 1) **Overview**
- **KPI Cards**:
  - Total Parts Produced
  - Total Defects
  - Defect Rate (%) = (Defective Parts / Total Parts) × 100
- **Trend Line**:
  - Defect rate by date
- **Bar Charts**:
  - Top 5 Defect Types
  - Top 5 Production Lines by Defects

---

### 2) **Defect Analysis**
- **Matrix / Cross-filter Table**:
  - Production Line × Defect Type (with drill-down)
- **Hourly Analysis**:
  - Line chart or heatmap of defects per hour (from `DimDate`)
- **Optional Distribution**:
  - Box/violin plot of defects per shift or per day (if supported)

---

### 3) **Client Impact**
- **Table**:
  - Defect counts and rates by client (if applicable)
- **Heatmap**:
  - Hour of day × Defect Rate, showing when issues are most frequent

---

### 4) **Quality Control**
- **KPI Cards**:
  - Good Parts (non-defective quantity)
  - First-Pass Yield (%)
- **Trend Chart**:
  - Good Parts vs Defective Parts over time

---

## Notes
- Keep each page focused: avoid overcrowding with too many visuals.  
- Use consistent colors (e.g., green for good parts, red for defective).  
- Insert your anonymized screenshots into `docs/images/` and link them in this file.  
