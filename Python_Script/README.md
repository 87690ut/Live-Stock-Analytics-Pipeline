# 📈 Stock Market Risk & Performance Analytics Dashboard

## 🎯 Project Overview
Welcome to my data analytics portfolio project! I built this end-to-end data pipeline and visualization dashboard to analyze stock market performance and assess investment risks. My goal was to create a practical, real-world tool that goes beyond simple charts by integrating data automation, dynamic DAX calculations, and an interactive investment simulator.

## 🛠️ Tech Stack & Tools Used
*   **Data Extraction & Automation:** Python (Pandas), Windows Task Scheduler
*   **Database Management:** SQL 
*   **Data Visualization & Modeling:** Power BI, DAX

## 🧠 What I Built (My Approach & Effort)
I divided this project into three main phases to ensure a clean, professional architecture:

### 1. The Backend: Data Engineering (Python & SQL)
Instead of relying on static Excel sheets, I built a dynamic system. 
*   Wrote a Python script to extract stock data (focusing on key tickers like INFY.NS, RELIANCE.NS, and TCS.NS).
*   Automated the daily execution of this script using **Windows Task Scheduler** (named "Stock Market Daily Update") so the database updates automatically without manual intervention.
*   Integrated the Python script with a SQL database using the `to_sql(if_exists='append')` method to maintain a robust historical record without overwriting old data.

### 2. The Logic: Data Modeling & DAX 
Calculating accurate financial metrics requires precise logic.
*   Created custom DAX measures using `MIN` and `MAX` dates to accurately fetch the `First_Price` and `Last_Price` of stocks based on the selected timeframe.
*   Implemented the `HASONEVALUE` function to ensure calculations and titles adapt seamlessly only when a specific stock ticker is selected.
*   Engineered a custom ROI (Return on Investment) percentage calculation.

### 3. The Frontend: Power BI Dashboard
I focused on a minimal, clean, and industry-standard UI design, actively removing heavy shadows and confusing legends for better readability.
*   **Investment Simulator:** Built a 'What-If' parameter allowing users to input investment amounts (e.g., 10k to 100k) to instantly see potential portfolio values.
*   **Dynamic Smart Titles:** The dashboard title dynamically updates to reflect the exact stock the user is currently analyzing.
*   **Risk Assessment:** Designed a custom Gauge chart for 'Average Volatility' and a Donut chart categorizing '20 Days Volatility Risk' into High, Medium, and Low risk zones using strict color coding (Red/Yellow/Green).
*   **Trend Analysis:** Plotted the Closing Price versus the 50-Day Moving Average to visualize market trends clearly.

## 💡 Key Learnings
This project was a massive learning curve. I learned how to debug static DAX outputs, handle data appending in SQL, manage aesthetic visual formatting, and structure a complete, automated data pipeline from scratch.

## 🚀 How to View This Project
1. Check out the **`dashboard_preview.png`** (or `.jpg`) for a quick look at the final Power BI dashboard interface.
2. Review the **`.py`** and **`.sql`** files to see the backend data extraction and database logic.
3. Download the **`.pbix`** file and open it in Power BI Desktop to interact with the Investment Simulator yourself.