use worldbankdata;

SELECT Name, Income_group 
FROM Country
ORDER BY Income_group;

SELECT `Country Name`, `2023 [YR2023]` AS GDP
FROM Economic_Indicators
ORDER BY GDP DESC
LIMIT 10;

SELECT c.name
FROM economic_indicators e
JOIN country c ON e.`Country Name` = c.name;

SELECT `Country Name`, `2021 [YR2021]`, `2022 [YR2022]`, `2023 [YR2023]`
FROM economic_indicators
WHERE `Country Code` = 'USA';

SELECT Income_group, COUNT(*) AS total_countries
FROM country
GROUP BY Income_group
ORDER BY total_countries DESC;

use graduateproject;

SELECT c.`Long Name`, c.`2-alpha code`
FROM `Country` c;

SELECT `Country Name`, `2023 [YR2023]` AS GDP
FROM `Economic Indicators`
WHERE `Series Name` = 'GDP (current US$)'
ORDER BY GDP DESC
LIMIT 10;

SELECT c.`Long Name`
FROM `Economic Indicators` e
JOIN `Country` c ON e.`Country Code` = c.`Code`
WHERE e.`Series Name` = 'GDP (current US$)';

SELECT `Country Name`, `2021 [YR2021]`, `2022 [YR2022]`, `2023 [YR2023]`
FROM `Economic Indicators`
WHERE `Country Code` = 'USA'
AND `Series Name` = 'GDP (current US$)';

SELECT `Country Name`, `2023 [YR2023]` AS GDP_Growth
FROM `Economic Indicators`
WHERE `Series Name` = 'GDP growth (annual %)'
ORDER BY GDP_Growth DESC;

SELECT `Country Name`, `2023 [YR2023]` AS Trade_Percentage
FROM `Economic Indicators`
WHERE `Series Name` = 'Trade (% of GDP)'
ORDER BY Trade_Percentage DESC;

SELECT `Country Name`, `2023 [YR2023]` AS Inflation_Rate
FROM `Economic Indicators`
WHERE `Series Name` = 'Inflation, consumer prices (annual %)'
ORDER BY Inflation_Rate DESC;

SELECT `Country Name`, `2023 [YR2023]` AS FDI
FROM `Economic Indicators`
WHERE `Series Name` = 'Foreign direct investment, net (BoP, current US$)'
ORDER BY FDI DESC;

SELECT c.`Long Name`, e.`2023 [YR2023]` AS Inflation_Rate
FROM Country c
JOIN `Economic Indicators` e 
ON c.`Code` = e.`Country Code`
WHERE e.`Series Name` = 'Inflation, consumer prices (annual %)';

SELECT c.`Long Name`, e.`2023 [YR2023]` AS Trade_Balance
FROM Country c
JOIN `Economic Indicators` e 
ON c.`Code` = e.`Country Code`
WHERE e.`Series Name` = 'Trade (% of GDP)'
ORDER BY Trade_Balance DESC

