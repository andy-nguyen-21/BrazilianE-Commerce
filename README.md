### Brazilian E-Commerce Data Analysis

This project performs a data analysis on a public Brazilian e-commerce dataset provided by Olist. The goal is to uncover key insights into customer behavior and sales trends, helping to inform business and marketing strategies.

---

### 📋 Dataset

The analysis is based on the **Brazilian E-Commerce Public Dataset by Olist**. This dataset contains information on 100,000 orders placed between 2016 and 2018 at various marketplaces in Brazil. It includes data on customer locations, product information, and order delivery status.

---

### 🛠️ Technologies & Tools

This project leverages the power of **SQL within a Python environment** to efficiently query and analyze the data. This approach combines the robustness of a relational database with the flexibility of Python's data manipulation libraries.

* **Python:** For data manipulation and analysis.
* **SQL:** Used to query the SQLite database directly from Python scripts.
* **Pandas:** For structuring and cleaning the data.
* **Seaborn & Matplotlib:** To create data visualizations, including heatmaps.
* **Jupyter Notebook:** The primary environment for executing the analysis.
* **Tableau:** (Optional) Can be used to create interactive dashboards.

---

### 📈 Key Findings

The project focuses on visualizing customer ordering behavior. The analysis reveals distinct patterns, such as:

* **Order Volume:** The platform experienced overall growth with noticeable seasonal peaks. Daily and hourly trends show higher activity during weekday working hours and a drop-off on weekends. São Paulo, Rio de Janeiro, and Minas Gerais are the top states by order volume.
* **Order Items Pricing:** Most orders consist of a single item, and there is a concentration of orders with lower total values and freight costs.
* **Revenue Breakdown by Category:** A few product categories dominate in both sales value and item count. There is a generally linear relationship between item count and total value per category.
* **Order Timestamp & Fulfillment Time:** Estimated delivery times consistently exceed actual delivery times. Delivery times show significant regional variation, with São Paulo having the fastest deliveries. The "Carrier to Delivery" stage is the most variable part of the fulfillment process. Average delivery time showed an upward trend from early 2017 to mid-2018.
* **Customer Review:** The majority of reviews are positive, but a notable portion are negative to average, representing an opportunity for improvement. There is a negative correlation between review score and average fulfillment time.

---

### 🖼️ Visualization

The core finding of this project is presented in the following heatmap, which visualizes the order volume.

---

### 🚀 How to Run the Project

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/npxdung21/gold-market-data-vietnam.git](https://github.com/npxdung21/gold-market-data-vietnam.git)
    cd gold-market-data-vietnam
    ```
2.  **Ensure you have the dataset:** The project uses a SQLite database file, which should be placed in the project root directory.
3.  **Install dependencies:**
    ```bash
    pip install pandas matplotlib seaborn
    ```
4.  **Run the script:** Execute the Jupyter Notebook file to replicate the analysis and visualizations.

---

### 📊 Tableau Dashboard (On-going...)

---

### 🤝 Author

* **Dung Nguyen** - [GitHub Profile](https://github.com/npxdung21)
