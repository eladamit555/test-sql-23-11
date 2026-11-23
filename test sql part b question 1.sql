CREATE TABLE televisions(id INTEGER PRIMARY KEY AUTOINCREMENT,
catalopg_number TEXT UNIQUE NOT NULL,
brand TEXT NOT NULL CHECK(brand in ('Samsung', 'LG', 'Sony')),
model TEXT NOT NULL,
price REAL NOT NULL CHECK(price > 0),
stock_quantity INTEGER DEFAULT 0 CHECK( stock_quantity >= 0),
release_year INTEGER,
smart_tv INTEGER CHECK(smart_tv IN(1, 0)));

CREATE TABLE tv_info(
tv_id INTEGER PRIMARY KEY,
screen_size REAL NOT NULL,
resolution TEXT CHECK( resolution in( '4K', '8K', 'Full HD')),
os TEXT,
panel_type TEXT CHECK(panel_type IN('OLED', 'QLED', 'LED')),
FOREIGN KEY(tv_id) REFERENCES televisions(id)
); 


INSERT INTO televisions(catalopg_number, brand, model, price, stock_quantity, release_year, smart_tv)
 VALUES
('TV001', 'Samsung', 'S47', 2499, 8, 2025, 1),
('TV002', 'LG', 'G89', 4499, 5, 2026, 1),
('TV003', 'Sony', 'SN-100', 1599, 12, 2022, 0);


INSERT INTO tv_info(tv_id, screen_size, resolution, os, panel_type)
VALUES
(1, 55, '4K', 'Tizen', 'QLED'),
(2, 55, '4K', 'webOS', 'QLED'),
(3, 43, '4K', NULL, 'LED');