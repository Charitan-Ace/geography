-- Step 1: Create the Regions Table
CREATE TABLE region (
    id SERIAL PRIMARY KEY,       -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL  -- Name of the region, cannot be NULL
);

-- Step 2: Insert Initial Region Data
INSERT INTO regions (name) VALUES 
    ('Africa'),
    ('Asia'),
    ('Europe'),
    ('North America'),
    ('South America'),
    ('Oceania'),
    ('Antarctica');

