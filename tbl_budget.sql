CREATE TABLE budget.budget (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    month VARCHAR(20) NOT NULL,
    year INT NOT NULL
);

ALTER TABLE budget.budget
ADD CONSTRAINT unique_month_year UNIQUE (month, year);