DROP TABLE IF EXISTS region;
DROP TABLE IF EXISTS country;

-- Step 1: Create the Regions Table
CREATE TABLE region (
    id SERIAL PRIMARY KEY,       -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL  -- Name of the region, cannot be NULL
);


-- Step 2: Insert Initial Region Data
INSERT INTO region (name) VALUES 
    ('AFRICA'),
    ('ASIA'),
    ('EUROPE'),
    ('NORTH_AMERIA'),
    ('SOUTH_AMERICA'),
    ('OCEANIA'),
    ('ANTARCTICA');

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
    ('Cyprus', 'CY', 2),
    ('Georgia', 'GE', 2),
    ('India', 'IN', 2),
    ('Indonesia', 'ID', 2),
    ('Iran', 'IR', 2),
    ('Iraq', 'IQ', 2),
    ('Israel', 'IL', 2),
    ('Japan', 'JP', 2),
    ('Jordan', 'JO', 2),
    ('Kazakhstan', 'KZ', 2),
    ('Kuwait', 'KW', 2),
    ('Kyrgyzstan', 'KG', 2),
    ('Laos', 'LA', 2),
    ('Lebanon', 'LB', 2),
    ('Malaysia', 'MY', 2),
    ('Maldives', 'MV', 2),
    ('Mongolia', 'MN', 2),
    ('Myanmar', 'MM', 2),
    ('Nepal', 'NP', 2),
    ('North Korea', 'KP', 2),
    ('Oman', 'OM', 2),
    ('Pakistan', 'PK', 2),
    ('Palestine', 'PS', 2),
    ('Philippines', 'PH', 2),
    ('Qatar', 'QA', 2),
    ('Saudi Arabia', 'SA', 2),
    ('Singapore', 'SG', 2),
    ('South Korea', 'KR', 2),
    ('Sri Lanka', 'LK', 2),
    ('Syria', 'SY', 2),
    ('Tajikistan', 'TJ', 2),
    ('Thailand', 'TH', 2),
    ('Timor-Leste', 'TL', 2),
    ('Turkey', 'TR', 2),
    ('Turkmenistan', 'TM', 2),
    ('United Arab Emirates', 'AE', 2),
    ('Uzbekistan', 'UZ', 2),
    ('Vietnam', 'VN', 2),
    ('Yemen', 'YE', 2);


-- Europe (Region ID = 3)
-- Europe (Region ID = 3)
INSERT INTO country (name, iso_code, region_id) VALUES 
    ('Albania', 'AL', 3),
    ('Andorra', 'AD', 3),
    ('Armenia', 'AM', 3),
    ('Austria', 'AT', 3),
    ('Azerbaijan', 'AZ', 3),
    ('Belarus', 'BY', 3),
    ('Belgium', 'BE', 3),
    ('Bosnia and Herzegovina', 'BA', 3),
    ('Bulgaria', 'BG', 3),
    ('Croatia', 'HR', 3),
    ('Cyprus', 'CY', 3),
    ('Czech Republic', 'CZ', 3),
    ('Denmark', 'DK', 3),
    ('Estonia', 'EE', 3),
    ('Finland', 'FI', 3),
    ('France', 'FR', 3),
    ('Georgia', 'GE', 3),
    ('Germany', 'DE', 3),
    ('Greece', 'GR', 3),
    ('Hungary', 'HU', 3),
    ('Iceland', 'IS', 3),
    ('Ireland', 'IE', 3),
    ('Italy', 'IT', 3),
    ('Kazakhstan', 'KZ', 3),
    ('Kosovo', 'XK', 3),
    ('Latvia', 'LV', 3),
    ('Liechtenstein', 'LI', 3),
    ('Lithuania', 'LT', 3),
    ('Luxembourg', 'LU', 3),
    ('Malta', 'MT', 3),
    ('Moldova', 'MD', 3),
    ('Monaco', 'MC', 3),
    ('Montenegro', 'ME', 3),
    ('Netherlands', 'NL', 3),
    ('North Macedonia', 'MK', 3),
    ('Norway', 'NO', 3),
    ('Poland', 'PL', 3),
    ('Portugal', 'PT', 3),
    ('Romania', 'RO', 3),
    ('Russia', 'RU', 3),
    ('San Marino', 'SM', 3),
    ('Serbia', 'RS', 3),
    ('Slovakia', 'SK', 3),
    ('Slovenia', 'SI', 3),
    ('Spain', 'ES', 3),
    ('Sweden', 'SE', 3),
    ('Switzerland', 'CH', 3),
    ('Turkey', 'TR', 3),
    ('Ukraine', 'UA', 3),
    ('United Kingdom', 'GB', 3),
    ('Vatican City', 'VA', 3);


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
