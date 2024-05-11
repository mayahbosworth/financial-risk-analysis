-- Create the Companies table
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    symbol VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(100),
    sector VARCHAR(50),
    industry VARCHAR(50)
);

-- Create the Financial Statements table
CREATE TABLE financial_statements (
    statement_id SERIAL PRIMARY KEY,
    company_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    statement_type VARCHAR(50),
    fiscal_period VARCHAR(15),
    total_revenue DECIMAL(18, 2),
    gross_profit DECIMAL(18, 2),
    net_income DECIMAL(18, 2),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

-- Create the Time Series Data table
CREATE TABLE time_series_data (
    data_id SERIAL PRIMARY KEY,
    statement_id INTEGER NOT NULL,
    metric_name VARCHAR(50),
    metric_value DECIMAL(18, 2),
    date DATE NOT NULL,
    FOREIGN KEY (statement_id) REFERENCES financial_statements(statement_id)
);

-- Additional Indexes for better query performance
CREATE INDEX idx_companies_symbol ON companies(symbol);
CREATE INDEX idx_financial_statements_report_date ON financial_statements(report_date);
CREATE INDEX idx_time_series_data_date ON time_series_data(date);
