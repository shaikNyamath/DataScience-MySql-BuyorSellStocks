# creating table bajaj1 with Close price, 20 ma and 50 ma 

Create Table bajaj1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `bajaj auto`
order by `date`
);

UPDATE bajaj1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;

# creating table tcs1 with Close price, 20 ma and 50 ma 

Create Table tcs1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `TCS`
order by `date`
);

UPDATE tcs1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;

# creating table tvs1 with Close price, 20 ma and 50 ma 

Create Table tvs1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `tvs motors`
order by `date`
);

UPDATE tvs1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;

# creating table infosys1 with Close price, 20 ma and 50 ma 

Create Table infosys1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `Infosys`
order by `date`
);


UPDATE infosys1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;


# creating table eicher1 with Close price, 20 ma and 50 ma 

Create Table eicher1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `eicher motors`
order by `date`
);

UPDATE eicher1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;


# creating table hero1 with Close price, 20 ma and 50 ma 

Create Table hero1 as ( SELECT `Date`,
       `Close Price`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 19 PRECEDING and current row) AS `20 Day MA`,
       AVG(`Close Price`) OVER (order by `date` rows BETWEEN 49 PRECEDING and current row) AS `50 Day MA`
FROM   `hero motocorp`
order by `date`
);

UPDATE hero1 
SET 
    `20 day ma` = NULL,
    `50 day ma` = NULL
LIMIT 49;
