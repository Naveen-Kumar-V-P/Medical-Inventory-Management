# 🏥 Medical Inventory Management System with ML & Power BI

A full-fledged medical inventory management solution that leverages **machine learning** to forecast product demand, optimize stock levels, and ensure uninterrupted supply of medical goods. This project combines predictive analytics with powerful business intelligence dashboards, enabling data-driven decision-making in hospitals and clinics.

---

## 📌 Problem Statement

Managing medical inventory is critical to saving lives. Hospitals often face either:
- **Stockouts** of essential items (critical failure)
- **Overstocking**, leading to wastage due to expiry

This project solves these issues using:
- Demand forecasting
- Smart reorder point detection
- Alerting for expiry and reorder triggers
- Real-time visual dashboards

---

## 🎯 Objectives

- Forecast monthly usage for each medical product
- Automate stock level analysis using ML
- Build a **Power BI dashboard** for medical staff and admins
- Implement **CRISP-DM methodology** for the data science lifecycle

---

## 📁 Project Structure

Medical-Inventory-Management/
├── Medical Inventory Management.ipynb # ML notebook with prediction logic
├── Medical Inventory Optimaization Dataset.csv # Cleaned dataset used for training
├── Dataset.xlsx # Raw dataset with metadata
├── CRISP_ML.xlsx # CRISP-DM documentation sheet
├── Dashboard.pbix # Power BI dashboard for visualization
└── README.md # Project documentation (this file)


---

## 🧾 Dataset Overview

**📂 File:** `Medical Inventory Optimaization Dataset.csv`

| Column Name          | Description                                                  |
|----------------------|--------------------------------------------------------------|
| `Item Name`          | Name of the medical product (e.g., Syringe, Paracetamol)     |
| `Category`           | Product type (Surgical, Equipment, Medicine, etc.)           |
| `Stock Level`        | Current number of items in stock                             |
| `Reorder Point`      | Minimum quantity before a new order is placed                |
| `Consumption Rate`   | Average number of items used per month                       |
| `Lead Time (Days)`   | Supplier delivery time after order is placed                 |
| `Expiry Date`        | Date when the product becomes unusable                       |
| `Supplier`           | Vendor from whom the item is sourced                         |
| `Last Order Date`    | Timestamp of the last order placed for the product           |

---

## 📊 Features Implemented

| Feature                        | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| 📈 **Demand Forecasting**      | Predict future item usage using regression models                           |
| 🧠 **Inventory Optimization**  | Determine reorder points and calculate safety stock dynamically             |
| ⏳ **Expiry Alert System**     | Flag products nearing expiration in real-time                               |
| ⚠️ **Low Stock Alerting**     | Automatic alerts for items below reorder threshold                          |
| 📉 **Power BI Dashboard**      | Visualize KPIs like stock status, demand forecast, expiry risk              |
| 📄 **CRISP-DM Implementation**| Followed industry-standard methodology for full ML lifecycle                |

---

## 🧪 Technologies Used

| Tool / Library     | Purpose                            |
|--------------------|------------------------------------|
| `Python`           | Programming language               |
| `Pandas`           | Data preprocessing and cleaning    |
| `Scikit-learn`     | Machine learning models            |
| `Matplotlib/Seaborn` | Data visualization              |
| `Openpyxl`         | Excel integration                  |
| `Power BI`         | Business intelligence dashboard    |
| `Excel`            | Raw data structuring & annotation  |

---

## 🔍 Methodology - CRISP-DM

This project follows the **CRISP-DM** (Cross Industry Standard Process for Data Mining) lifecycle. The key steps are:

1. **Business Understanding** – Identify inventory problems (stockout, expiry, demand fluctuation)
2. **Data Understanding** – Explore data using `.csv` and `.xlsx` files
3. **Data Preparation** – Clean and transform using `Pandas`
4. **Modeling** – Apply forecasting (e.g., Linear Regression, moving averages)
5. **Evaluation** – Compare predicted vs actual demand
6. **Deployment** – Visualize insights via Power BI dashboard

*Reference documentation: `CRISP_ML.xlsx`*

---

## 📈 Power BI Dashboard Highlights

> 📌 Open `Dashboard.pbix` using Power BI Desktop.

### Key Views:
- **Stock vs Consumption** (Bar chart)
- **Reorder Point Breach Tracker** (Table)
- **Expiry Timeline View** (Gantt/Timeline)
- **Supplier-wise Inventory Health** (Pie chart)
- **Top 10 Expiring Products** (Heatmap)

> ✅ Suggestion: Add screenshots to a `/screenshots` folder on GitHub to preview the dashboard!

---

## 🧠 ML Techniques Used

- **Linear Regression** for continuous demand prediction
- **Conditional Rules** for reorder & expiry detection
- **Time-based logic** to monitor last order vs current demand
- Feature engineering using lead time and reorder buffer

---

## 🚀 How to Run This Project

### ▶️ Run Machine Learning Notebook
```bash
# Step 1: Install requirements
pip install pandas matplotlib seaborn scikit-learn openpyxl

# Step 2: Launch Jupyter Notebook
jupyter notebook "Medical Inventory Management.ipynb"
