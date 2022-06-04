CREATE TABLE IF NOT EXISTS employers(
    company_name VARCHAR(255),
    company_address VARCHAR(255),
    -- yearly_revenue FLOAT(5, 2), -- Approximate! -- Allowed: 123.12 , Not Allowed: 1234.12 or 123.123
    yearly_revenue NUMERIC(5, 2),
    -- Exact! 
    is_hiring BOOLEAN
);