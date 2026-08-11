# 📊 Project Cost Analysis Dashboard

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-4169E1?logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-CC292B?logo=microsoftsqlserver&logoColor=white)
![Google Sheets](https://img.shields.io/badge/Storage-Google%20Sheets-34A853?logo=googlesheets&logoColor=white)
![Looker Studio](https://img.shields.io/badge/BI-Looker%20Studio-4285F4?logo=googlecloud&logoColor=white)

Project ini menganalisis perbandingan antara **Budget** (anggaran) dan **Actual Cost** (biaya aktual) dalam pengelolaan proyek. Proses query dan agregasi data dilakukan menggunakan **PostgreSQL/SQL**, kemudian diintegrasikan melalui **Google Sheets** dan divisualisasikan secara interaktif di **Looker Studio**.

---

## 🔗 Live Dashboard
👉 **[Klik di sini untuk melihat Interactive Dashboard](https://datastudio.google.com/u/0/reporting/f1b193f5-cddb-4566-9a2f-7123c5db4def/page/C095F)**

---

## 💡 Key Insights & Business Highlights

* ⚠️ **Over-Budget Warning:** Kategori **IT Equipment** mencatatkan pembengkakan biaya (*over-budget*) terbesar, yaitu mencapai **Rp171,93 Juta (+1,44%)** di atas anggaran yang direncanakan.
* 📈 **Variansi Biaya:** Diperlukan evaluasi dan kontrol ketat pada pengadaan perangkat IT untuk mencegah *cost overrun* yang lebih besar pada proyek mendatangkan berikutnya.

---

## 🛠️ Tools & Technologies

| Tool / Tech | Fungsi / Kegunaan |
| :--- | :--- |
| **PostgreSQL / SQL** | Query, pembersihan, agregasi data budget vs actual cost |
| **Google Sheets** | Perantara data source & staging area sebelum masuk ke Looker Studio |
| **Looker Studio** | Pembuatan dashboard visualisasi data interaktif & reporting |

---

## 📁 Repository Structure

```text
.
├── sql/
│   └── project_cost_analysis.sql   # Query PostgreSQL untuk agregasi data
├── data/
│   └── cost_data_sample.csv        # Sample dataset
└── README.md                       # Dokumentasi project
