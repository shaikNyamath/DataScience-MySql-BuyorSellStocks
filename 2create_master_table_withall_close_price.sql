CREATE TABLE master_stock AS (SELECT b.`Date`,
    b.`close price` AS bajaj,
    tcs.`close price` AS tcs,
    tvs.`close price` AS tvs,
    i.`close price` AS infosys,
    e.`close price` AS eicher,
    h.`close price` AS hero FROM
    bajaj1 b,
    tvs1 tvs,
    tcs1 tcs,
    infosys1 i,
    hero1 h,
    eicher1 e
WHERE
    b.`date` = tvs.`date`
        AND tvs.`date` = tcs.`date`
        AND tcs.`date` = i.`date`
        AND i.`date` = h.`date`
        AND h.`date` = e.`date`);
        