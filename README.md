# Financial Risk Analytics Engine


## Project Objective:

A system that uses financial transaction data to identify and analyze patterns that may indicate risks such as money laundering, sanctions violations, or other financial crimes.

This project provides advanced analytical tools to detect and understand these risks.

## Data:

### Source:
- AlphaVantage: I utilized the AlphaVantage Stock API to access real-time market data, financial statements, and company profiles. This API provides extensive data on global stocks, which is crucial for analyzing financial transactions and identifying patterns indicative of financial crimes like money laundering or sanctions violations.
- Yahoo Finance: Data was also extracted through web scraping Yahoo Finance, focusing on historical stock prices, trading volumes, and financial summaries. This approach allowed us to gather detailed information on stock performance over time, which is essential for our analysis of market trends and anomaly detection.

### Characteristics:

- Volume: Data includes thousands of records per day, encompassing various financial metrics and stock performance indicators.
- Variety: The dataset comprises several types of information, including stock prices, trading volumes, financial ratios, earnings reports, and company expenditure.
- Velocity: The data is updated in real-time through the Finnhub API, while the scraped Yahoo Finance data provides daily updates.
- Veracity: Both Finnhub and Yahoo Finance are reputable sources providing reliable and accurate financial data.
- Value: The comprehensive financial data is crucial for detecting unusual patterns and potential illicit activities within financial markets.

## Future Improvments

- Real-time Data Analysis: Implement real-time data processing for immediate detection of suspicious activities.
- Advanced Machine Learning Models: Explore deep learning and ensemble methods to enhance anomaly detection accuracy.
