# creating tables with date, close price and Signal

CREATE TABLE bajaj2 AS 
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    bajaj1;


# creating tcs2 table 

CREATE TABLE tcs2 AS
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    tcs1;
    

# creating tvs2 table

CREATE TABLE tvs2 AS
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    tvs1;
    
# creating hero2 table

CREATE TABLE hero2 AS 
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    hero1;
    
# creating eicher2 table

CREATE TABLE eicher2 AS
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    eicher1; 
    
# creating infosys2 table

CREATE TABLE infosys2 AS 
SELECT `date`, `close price`,
	(CASE
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) <  LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` > `50 day ma` THEN 'BUY'
        WHEN LAG(`20 day ma`, 1) OVER (order by `date`) > LAG(`50 day ma`, 1) OVER (order by `date`) AND `20 day ma` < `50 day ma`  THEN 'SELL'
        ELSE 'HOLD'
    END) AS 'Signal'
FROM
    infosys1;
