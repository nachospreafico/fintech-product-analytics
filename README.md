# Fintech Product Performance Dashboard

A one-page **Product Analytics dashboard** built to analyze **growth, engagement, and monetization** for a fintech-style application using **SQL Server** and **Power BI**.

This project is designed as a **portfolio piece** to demonstrate clean data modeling, KPI definition, and executive-level dashboarding using synthetic data.

---

## 📊 Dashboard Overview

The dashboard answers three core product questions:

1. **Are we growing?**  
   → New Users, Active Users

2. **Are users engaging with the product?**  
   → Transactions, Transactions per Active User

3. **Are we monetizing that engagement?**  
   → Total Revenue, ARPU, Revenue Mix (Fees vs Subscriptions)

All metrics are analyzed at a **monthly grain**, with support for **Quarter → Month** drill-down.

---

## 🧱 Data Model

The project uses a simple, analytics-friendly star-style model:

### Source Tables (synthetic)

- `users` — user attributes and signup information
- `transactions` — raw transactional events
- `subscriptions` — monthly subscription records
- `dim_plans` — plan metadata and pricing

### Analytics Views (SQL Server)

Business logic is handled in SQL via monthly aggregation views:

- **`vw_transactions_monthly`**  
  Aggregates raw transactions to a **user–month** level.

  - Transactions count
  - Total transaction amount
  - Transaction fee revenue

- **`vw_subscription_revenue`**  
  Provides **monthly subscription revenue per user and plan**.

These views are consumed directly by Power BI, keeping the BI layer clean and performant.

---

## 🗄 SQL Layer

All SQL transformations are stored in the `/sql` folder:

```text
sql/
├── vw_transaction_analytics_.sql
└── vw_subscription_revenue.sql
```

This approach:

- Separates data preparation from visualization
- Avoids complex Power BI transformations
- Mirrors real-world analytics engineering practices

---

## 📈 Key KPIs

### Growth

- **New Users**
- **Active Users**
- Month-over-Month change (vs previous month)

### Engagement

- **Total Transactions**
- **Transactions per Active User**

### Monetization

- **Transaction Fee Revenue**
- **Subscription Revenue**
- **Total Revenue**
- **ARPU (Average Revenue per Active User)**

Revenue KPIs are shown both as totals and as a **revenue mix** (transactions vs subscriptions).

---

## 🎛 Interactivity

Slicers included:

- **Period** (Quarter → Month hierarchy)
- **Plan**
- **Acquisition Channel**

Headline KPIs are intentionally kept stable and easy to read, while breakdown visuals respond to slicer selections.

---

## 🧠 Design Principles

- Monthly grain for all KPIs
- Clear separation of **growth**, **usage**, and **monetization**
- Minimal number of visuals (one-page executive view)
- SQL for data shaping, Power BI for metrics and storytelling

---

## 🛠 Tools Used

- **Microsoft SQL Server** — data modeling and aggregation
- **Power BI Desktop** — data visualization and DAX measures
- **Synthetic data** — generated for portfolio purposes

---

## 📁 Project Structure

```text
fintech-product-analytics/
│
├── sql/
│   ├── vw_transaction_analytics_.sql
│   └── vw_subscription_revenue.sql
│
├── powerbi/
│   └── Product_Performance.pbix
│
├── data/
│   └── fintech_dim_plans.csv
│   └── fintech_subscriptions_monthly_2025.csv
│   └── fintech_transactions_2025.csv
│   └── fintech_users_2025.csv
└── README.md
```

---

## 🚀 Notes

- All data is synthetic and used exclusively for demonstration purposes.
- The project is intentionally scoped to be completed end-to-end in under 90 minutes.
- Metrics and modeling choices follow standard product analytics best practices.

---

## 📬 Contact

**Ignacio Spreafico**  
Data & Business Analyst | Driving Decisions with Python, SQL & Power BI | Statistics & Machine Learning

📧 Email: **nachospreafico06@gmail.com**  
🔗 LinkedIn: **https://www.linkedin.com/in/ignacio-spreafico**  
🐙 GitHub: **https://github.com/nachospreafico**

---

## ⭐ Support / Feedback

If you like this project, consider leaving a ⭐ on GitHub!  
This project is part of my data science portfolio and demonstrates statistical reasoning, product analytics thinking, and clean code practices.
