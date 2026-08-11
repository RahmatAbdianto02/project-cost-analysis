# 📊 Project Cost Analysis Dashboard

Project ini menganalisis perbandingan antara **Budget** (anggaran) dan
**Actual Cost** (biaya aktual) untuk mengidentifikasi kategori yang
mengalami over-budget maupun under-budget.

Data dipersiapkan menggunakan **Excel/Google Sheets**, kemudian dianalisis
menggunakan **PostgreSQL/SQL** melalui proses agregasi dan perhitungan
budget variance. Hasil analisis kemudian digunakan sebagai sumber data
untuk dashboard interaktif di **Looker Studio**.

---

## 🔗 Live Dashboard

👉 [View Interactive Dashboard](https://datastudio.google.com/u/0/reporting/f1b193f5-cddb-4566-9a2f-7123c5db4def/page/C095F)

---

## 🎯 Project Objective

Menganalisis kinerja biaya proyek dengan membandingkan:

- Total Budget
- Total Actual Cost
- Budget Variance
- Variance Percentage
- Kinerja biaya berdasarkan kategori

---

## 💡 Key Insights

- ⚠️ **IT Equipment** merupakan kategori dengan over-budget terbesar,
  yaitu **Rp171,93 juta (1,44%)** di atas budget.
- 💰 **Office Furniture** memiliki cost saving terbesar,
  yaitu sekitar **Rp58,78 juta (7,84%)** di bawah budget.
- 📊 Secara keseluruhan, **Actual Cost melebihi Budget sebesar
  Rp100,25 juta**.

---

## 🔎 SQL Analysis

Analisis dilakukan menggunakan SQL untuk:

- Mengelompokkan data berdasarkan kategori/project
- Menghitung total budget
- Menghitung total actual cost
- Menghitung budget variance
- Menghitung variance percentage
- Mengurutkan kategori berdasarkan variance

Contoh analisis:

```sql
SELECT
    project_name,
    SUM(budget) AS total_budget,
    SUM(actual_cost) AS total_actual_cost,
    SUM(actual_cost) - SUM(budget) AS selisih
FROM project_cost
GROUP BY project_name
ORDER BY selisih DESC;
