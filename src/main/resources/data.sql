-- Step 1: Create the Regions Table
CREATE TABLE region (
    id SERIAL PRIMARY KEY,       -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL  -- Name of the region, cannot be NULL
);


-- Step 2: Insert Initial Region Data
INSERT INTO region (name) VALUES 
    ('Africa'),
    ('Asia'),
    ('Europe'),
    ('North America'),
    ('South America'),
    ('Oceania'),
    ('Antarctica');

-- Step 1: Create the Countries Table
CREATE TABLE country (
    id SERIAL PRIMARY KEY,              -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL,         -- Name of the country, cannot be NULL
    iso_code VARCHAR(3) NOT NULL,      -- ISO code of the country (e.g., 'US' for United States)
    region_id BIGINT NOT NULL          -- Foreign key referring to the region table
);

-- Step 2: Insert Countries for Each Region (max 10 countries per region)

-- Africa (Region ID = 1)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Nigeria', 'NG', 1),
    ('South Africa', 'ZA', 1),
    ('Kenya', 'KE', 1),
    ('Egypt', 'EG', 1),
    ('Morocco', 'MA', 1),
    ('Ethiopia', 'ET', 1),
    ('Ghana', 'GH', 1),
    ('Uganda', 'UG', 1),
    ('Algeria', 'DZ', 1),
    ('Angola', 'AO', 1);

-- Asia (Region ID = 2)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Afghanistan', 'AF', 2),
    ('Armenia', 'AM', 2),
    ('Azerbaijan', 'AZ', 2),
    ('Bahrain', 'BH', 2),
    ('Bangladesh', 'BD', 2),
    ('Bhutan', 'BT', 2),
    ('Brunei', 'BN', 2),
    ('Cambodia', 'KH', 2),
    ('China', 'CN', 2),
    ('India', 'IN', 2);

-- Europe (Region ID = 3)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Germany', 'DE', 3),
    ('France', 'FR', 3),
    ('United Kingdom', 'GB', 3),
    ('Italy', 'IT', 3),
    ('Spain', 'ES', 3),
    ('Netherlands', 'NL', 3),
    ('Poland', 'PL', 3),
    ('Greece', 'GR', 3),
    ('Belgium', 'BE', 3),
    ('Sweden', 'SE', 3);

-- North America (Region ID = 4)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('United States', 'US', 4),
    ('Canada', 'CA', 4),
    ('Mexico', 'MX', 4),
    ('Guatemala', 'GT', 4),
    ('Cuba', 'CU', 4),
    ('Honduras', 'HN', 4),
    ('El Salvador', 'SV', 4),
    ('Panama', 'PA', 4),
    ('Costa Rica', 'CR', 4),
    ('Belize', 'BZ', 4);

-- South America (Region ID = 5)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Brazil', 'BR', 5),
    ('Argentina', 'AR', 5),
    ('Colombia', 'CO', 5),
    ('Chile', 'CL', 5),
    ('Peru', 'PE', 5),
    ('Venezuela', 'VE', 5),
    ('Ecuador', 'EC', 5),
    ('Bolivia', 'BO', 5),
    ('Paraguay', 'PY', 5),
    ('Uruguay', 'UY', 5);

-- Oceania (Region ID = 6)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Australia', 'AU', 6),
    ('New Zealand', 'NZ', 6),
    ('Papua New Guinea', 'PG', 6),
    ('Fiji', 'FJ', 6),
    ('Solomon Islands', 'SB', 6),
    ('Vanuatu', 'VU', 6),
    ('Samoa', 'WS', 6),
    ('Tonga', 'TO', 6),
    ('Tuvalu', 'TV', 6),
    ('Kiribati', 'KI', 6);

-- Antarctica (Region ID = 7)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Antarctica', 'AQ', 7); -- Only Antarctica, as it has no countries
