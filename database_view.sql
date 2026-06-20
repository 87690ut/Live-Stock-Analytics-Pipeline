create database portfolio_db; -- database creation --
use portfolio_db;
SELECT 
    *
FROM
    indian_stocks_data;

-- Calculating past 50 days moving average. --
create view  dashboard_data_view as 
select Date, Ticker, Close, avg(Close) over (partition by Ticker order by Date rows between 49 preceding and current row) as Moving_Average_50, -- Calculating Volatility of past 20 days.
stddev(Close) over (partition by Ticker order by Date rows between 19 preceding and current row) as Volatility_20_days
from portfolio_db.indian_stocks_data;

select * from dashboard_data_view;