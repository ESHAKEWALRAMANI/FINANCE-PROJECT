use new;

Select * from financial_data;

SELECT AVG(Income_Level) AS Average_Income
FROM financial_data;

SELECT Occupation, SUM(Compliance_Costs) AS Total_Cost
FROM financial_data
GROUP BY Occupation;

SELECT Credit_Risk, COUNT(*) AS Risk_Count
FROM financial_data
GROUP BY Credit_Risk;


SELECT Company, Market_Share, 
       RANK() OVER (PARTITION BY Company ORDER BY Market_Share DESC) AS Market_Share_Rank
FROM financial_data;


SELECT Strategic_Alliances, COUNT(*) AS Alliance_Count
FROM financial_data
GROUP BY Strategic_Alliances
ORDER BY Alliance_Count DESC
LIMIT 1;


SELECT Capital_Adequacy, AVG(Credit_Risk) AS Avg_Credit_Risk
FROM financial_data
GROUP BY Capital_Adequacy;


SELECT Strategic_Alliances, AVG(Capital_Adequacy) AS Avg_Capital_Adequacy
FROM financial_data
GROUP BY Strategic_Alliances;



