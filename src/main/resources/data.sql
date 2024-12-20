-- Step 1: Create the Regions Table
CREATE TABLE region (
    id SERIAL PRIMARY KEY,       -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL  -- Name of the region, cannot be NULL
);

-- Step 1: Create the Countries Table
CREATE TABLE country (
    id SERIAL PRIMARY KEY,              -- Auto-incrementing unique ID
    name VARCHAR(255) NOT NULL,         -- Name of the country, cannot be NULL
    iso_code VARCHAR(3) NOT NULL,      -- ISO code of the country
    flag_url VARCHAR(255),              -- URL of the country's flag (optional)
    region_id BIGINT NOT NULL,          -- Foreign key referring to the region table
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

-- Step 2: Insert Initial Country Data

-- Insert countries in Africa (region_id = 1)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES 
    ('Nigeria', 'NG', 'https://example.com/flags/ng.png', 1),
    ('South Africa', 'ZA', 'https://example.com/flags/za.png', 1),
    ('Kenya', 'KE', 'https://example.com/flags/ke.png', 1),
    ('Egypt', 'EG', 'https://example.com/flags/eg.png', 1),
    ('Morocco', 'MA', 'https://example.com/flags/ma.png', 1),
    ('Ethiopia', 'ET', 'https://example.com/flags/et.png', 1),
    ('Ghana', 'GH', 'https://example.com/flags/gh.png', 1),
    ('Uganda', 'UG', 'https://example.com/flags/ug.png', 1),
    ('Algeria', 'DZ', 'https://example.com/flags/dz.png', 1),
    ('Angola', 'AO', 'https://example.com/flags/ao.png', 1),
    ('Tanzania', 'TZ', 'https://example.com/flags/tz.png', 1),
    ('Sudan', 'SD', 'https://example.com/flags/sd.png', 1),
    ('Morocco', 'MA', 'https://example.com/flags/ma.png', 1),
    ('Ivory Coast', 'CI', 'https://example.com/flags/ci.png', 1),
    ('Madagascar', 'MG', 'https://example.com/flags/mg.png', 1),
    ('Cameroon', 'CM', 'https://example.com/flags/cm.png', 1),
    ('Mali', 'ML', 'https://example.com/flags/ml.png', 1),
    ('Malawi', 'MW', 'https://example.com/flags/mw.png', 1),
    ('Zambia', 'ZM', 'https://example.com/flags/zm.png', 1),
    ('Senegal', 'SN', 'https://example.com/flags/sn.png', 1),
    ('Zimbabwe', 'ZW', 'https://example.com/flags/zw.png', 1),
    ('Rwanda', 'RW', 'https://example.com/flags/rw.png', 1),
    ('Burkina Faso', 'BF', 'https://example.com/flags/bf.png', 1),
    ('Tunisia', 'TN', 'https://example.com/flags/tn.png', 1),
    ('Benin', 'BJ', 'https://example.com/flags/bj.png', 1),
    ('Burundi', 'BI', 'https://example.com/flags/bi.png', 1),
    ('Sierra Leone', 'SL', 'https://example.com/flags/sl.png', 1),
    ('Togo', 'TG', 'https://example.com/flags/tg.png', 1),
    ('Libya', 'LY', 'https://example.com/flags/ly.png', 1),
    ('Congo (Kinshasa)', 'CD', 'https://example.com/flags/cd.png', 1),
    ('Congo (Brazzaville)', 'CG', 'https://example.com/flags/cg.png', 1),
    ('Gabon', 'GA', 'https://example.com/flags/ga.png', 1),
    ('Liberia', 'LR', 'https://example.com/flags/lr.png', 1),
    ('Equatorial Guinea', 'GQ', 'https://example.com/flags/gq.png', 1),
    ('Mauritius', 'MU', 'https://example.com/flags/mu.png', 1),
    ('Namibia', 'NA', 'https://example.com/flags/na.png', 1),
    ('Botswana', 'BW', 'https://example.com/flags/bw.png', 1),
    ('Lesotho', 'LS', 'https://example.com/flags/ls.png', 1),
    ('Swaziland', 'SZ', 'https://example.com/flags/sz.png', 1),
    ('Seychelles', 'SC', 'https://example.com/flags/sc.png', 1),
    ('Comoros', 'KM', 'https://example.com/flags/km.png', 1),
    ('Mauritania', 'MR', 'https://example.com/flags/mr.png', 1),
    ('Gabon', 'GA', 'https://example.com/flags/ga.png', 1),
    ('Chad', 'TD', 'https://example.com/flags/td.png', 1),
    ('Djibouti', 'DJ', 'https://example.com/flags/dj.png', 1),
    ('Somalia', 'SO', 'https://example.com/flags/so.png', 1),
    ('Central African Republic', 'CF', 'https://example.com/flags/cf.png', 1),
    ('South Sudan', 'SS', 'https://example.com/flags/ss.png', 1),
    ('Eritrea', 'ER', 'https://example.com/flags/er.png', 1);


-- Insert countries in Asia (region_id = 2)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES
    ('China', 'CN', 'https://example.com/flags/cn.png', 2),
    ('India', 'IN', 'https://example.com/flags/in.png', 2),
    ('Japan', 'JP', 'https://example.com/flags/jp.png', 2),
    ('South Korea', 'KR', 'https://example.com/flags/kr.png', 2),
    ('Indonesia', 'ID', 'https://example.com/flags/id.png', 2);

-- Insert countries in Europe (region_id = 3)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES
    ('Germany', 'DE', 'https://example.com/flags/de.png', 3),
    ('France', 'FR', 'https://example.com/flags/fr.png', 3),
    ('Italy', 'IT', 'https://example.com/flags/it.png', 3),
    ('Spain', 'ES', 'https://example.com/flags/es.png', 3),
    ('United Kingdom', 'GB', 'https://example.com/flags/gb.png', 3);

-- Insert countries in North America (region_id = 4)
-- Step 2: Insert Asian Country Data

INSERT INTO country (name, iso_code, flag_url, region_id) VALUES 
    ('Afghanistan', 'AF', 'https://example.com/flags/af.png', 2),
    ('Armenia', 'AM', 'https://example.com/flags/am.png', 2),
    ('Azerbaijan', 'AZ', 'https://example.com/flags/az.png', 2),
    ('Bahrain', 'BH', 'https://example.com/flags/bh.png', 2),
    ('Bangladesh', 'BD', 'https://example.com/flags/bd.png', 2),
    ('Bhutan', 'BT', 'https://example.com/flags/bt.png', 2),
    ('Brunei', 'BN', 'https://example.com/flags/bn.png', 2),
    ('Cambodia', 'KH', 'https://example.com/flags/kh.png', 2),
    ('China', 'CN', 'https://example.com/flags/cn.png', 2),
    ('Cyprus', 'CY', 'https://example.com/flags/cy.png', 2),
    ('Georgia', 'GE', 'https://example.com/flags/ge.png', 2),
    ('India', 'IN', 'https://example.com/flags/in.png', 2),
    ('Indonesia', 'ID', 'https://example.com/flags/id.png', 2),
    ('Iran', 'IR', 'https://example.com/flags/ir.png', 2),
    ('Iraq', 'IQ', 'https://example.com/flags/iq.png', 2),
    ('Israel', 'IL', 'https://example.com/flags/il.png', 2),
    ('Japan', 'JP', 'https://example.com/flags/jp.png', 2),
    ('Jordan', 'JO', 'https://example.com/flags/jo.png', 2),
    ('Kazakhstan', 'KZ', 'https://example.com/flags/kz.png', 2),
    ('Kuwait', 'KW', 'https://example.com/flags/kw.png', 2),
    ('Kyrgyzstan', 'KG', 'https://example.com/flags/kg.png', 2),
    ('Laos', 'LA', 'https://example.com/flags/la.png', 2),
    ('Lebanon', 'LB', 'https://example.com/flags/lb.png', 2),
    ('Malaysia', 'MY', 'https://example.com/flags/my.png', 2),
    ('Maldives', 'MV', 'https://example.com/flags/mv.png', 2),
    ('Mongolia', 'MN', 'https://example.com/flags/mn.png', 2),
    ('Myanmar (Burma)', 'MM', 'https://example.com/flags/mm.png', 2),
    ('Nepal', 'NP', 'https://example.com/flags/np.png', 2),
    ('North Korea', 'KP', 'https://example.com/flags/kp.png', 2),
    ('Oman', 'OM', 'https://example.com/flags/om.png', 2),
    ('Pakistan', 'PK', 'https://example.com/flags/pk.png', 2),
    ('Palestine', 'PS', 'https://example.com/flags/ps.png', 2),
    ('Philippines', 'PH', 'https://example.com/flags/ph.png', 2),
    ('Qatar', 'QA', 'https://example.com/flags/qa.png', 2),
    ('Russia', 'RU', 'https://example.com/flags/ru.png', 2),
    ('Saudi Arabia', 'SA', 'https://example.com/flags/sa.png', 2),
    ('Singapore', 'SG', 'https://example.com/flags/sg.png', 2),
    ('South Korea', 'KR', 'https://example.com/flags/kr.png', 2),
    ('Sri Lanka', 'LK', 'https://example.com/flags/lk.png', 2),
    ('Syria', 'SY', 'https://example.com/flags/sy.png', 2),
    ('Tajikistan', 'TJ', 'https://example.com/flags/tj.png', 2),
    ('Thailand', 'TH', 'https://example.com/flags/th.png', 2),
    ('Timor-Leste', 'TL', 'https://example.com/flags/tl.png', 2),
    ('Turkey', 'TR', 'https://example.com/flags/tr.png', 2),
    ('Turkmenistan', 'TM', 'https://example.com/flags/tm.png', 2),
    ('United Arab Emirates', 'AE', 'https://example.com/flags/ae.png', 2),
    ('Uzbekistan', 'UZ', 'https://example.com/flags/uz.png', 2),
    ('Vietnam', 'VN', 'https://example.com/flags/vn.png', 2),
    ('Yemen', 'YE', 'https://example.com/flags/ye.png', 2);


-- Insert countries in South America (region_id = 5)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES
    ('Brazil', 'BR', 'https://example.com/flags/br.png', 5),
    ('Argentina', 'AR', 'https://example.com/flags/ar.png', 5),
    ('Chile', 'CL', 'https://example.com/flags/cl.png', 5),
    ('Colombia', 'CO', 'https://example.com/flags/co.png', 5),
    ('Peru', 'PE', 'https://example.com/flags/pe.png', 5);

-- Insert countries in Oceania (region_id = 6)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES
    ('Australia', 'AU', 'https://example.com/flags/au.png', 6),
    ('New Zealand', 'NZ', 'https://example.com/flags/nz.png', 6),
    ('Papua New Guinea', 'PG', 'https://example.com/flags/pg.png', 6),
    ('Fiji', 'FJ', 'https://example.com/flags/fj.png', 6),
    ('Samoa', 'WS', 'https://example.com/flags/ws.png', 6);

-- Insert countries in Antarctica (region_id = 7)
INSERT INTO country (name, iso_code, flag_url, region_id) VALUES
    ('Antarctica', 'AQ', 'https://example.com/flags/aq.png', 7);


