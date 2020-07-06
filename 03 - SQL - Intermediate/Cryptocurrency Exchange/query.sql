SELECT *
    FROM transactions;

SELECT SUM(money_in) AS total_money_in
    FROM transactions;

SELECT SUM(money_out) AS total_money_out
    FROM transactions;

SELECT COUNT(money_in) AS money_in_transactions
    FROM transactions;

SELECT COUNT(money_in) AS money_in_BIT_transactions
    FROM transactions
    WHERE currency = 'BIT';

SELECT
    MAX(money_in) AS biggest_money_in
    FROM transactions;

SELECT
    MAX(money_out) AS biggest_money_out
    FROM transactions;

SELECT AVG(money_in) average_ETH_money_in
    FROM transactions
    WHERE currency = 'ETH';

SELECT
    date,
    ROUND(AVG(money_in), 2) average_money_in,
    ROUND(AVG(money_out), 2) average_money_out
    FROM transactions
    GROUP BY date;
