/* 
AGGREGATE FUNCTION, LIMIT AND GROUP, JOIN, HAVING CLAUSE, CASE STATEMENT
*/
-- 1.  Find which employee had good rating - INFO
SELECT ai.AgentsName, ai.AgentsEmployer,ar.AgentsRating, ar.EmployersRating
FROM dbo.AgentsInfo ai
INNER JOIN dbo.AgentsRating ar 
ON ai.AgentsName = AR.AgentsName

-- 2. Find the information of all zillow and count how many employers work at the company.
SELECT AgentsName, COUNT(AgentsEmployer) AS Zillow_Employee
FROM dbo.AgentsInfo
WHERE AgentsEmployer = 'Zillow'
GROUP BY AgentsName

-- 3. Filter customers_financial with higher than 30000
SELECT CustomerName,CreditCard,
		SUM(TotalFee) as Total_Payment
FROM dbo.Customes_Financial
GROUP BY CustomerName,CreditCard
HAVING SUM(TotalFee) > 30000

-- 4. GMAIL ACCOUNT COUNT
SELECT AgentsName, COUNT(AgentsEmailAddress)
FROM dbo.AgentsInfo
WHERE AgentsEmailAddress LIKE '%@gmail.com%'
GROUP BY AgentsName

-- 5. Order by Lowest to Highest Agent Rating
SELECT * 
FROM dbo.AgentsRating
ORDER BY AgentsRating ASC
SELECT * FROM dbo.CustomersInfo

-- 6. FIND THE TYPE OF PAYMENT AND ORDER BY DESC
SELECT CustomerName, CreditCard,TotalFee,
CASE WHEN (TotalFee) < 23000 THEN 'Low Payment'
	 WHEN TotalFee BETWEEN 23000 AND 40000 THEN 'Avg Payment'
	 WHEN (TotalFee) > 40000 THEN 'High Payment'
END AS Price_Category
FROM dbo.Customes_Financial
ORDER BY TotalFee DESC

-- 7. Find the customers info of high and low amount paid from texas state
SELECT CI.CustomerName, COUNT(STATE) AS [Texas-State],
	   CF.CreditCard, MAX(TOTALFEE) AS HighFee, MIN(totalFee) as LowFee
FROM dbo.CustomersInfo CI 
LEFT JOIN dbo.Customes_Financial CF
ON CI.CustomerName = CF.CustomerName
WHERE CI.[State] = 'TX'
GROUP BY CI.CustomerName, CF.CreditCard
ORDER BY CF.CreditCard ASC

