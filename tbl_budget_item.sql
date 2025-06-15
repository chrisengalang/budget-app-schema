CREATE TABLE budget_item (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    budget_id UUID NOT NULL,
    name TEXT NOT NULL,
    target NUMERIC(12, 2) NOT NULL,
    current NUMERIC(12, 2) NOT NULL,
    CONSTRAINT fk_budget
        FOREIGN KEY(budget_id)
        REFERENCES budget(id)
        ON DELETE CASCADE
);