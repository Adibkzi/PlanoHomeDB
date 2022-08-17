/*
UPDATE DATA

*/

-- Update Steve G. Walker Employer name

UPDATE dbo.AgentsInfo
SET		AgentsEmployer = 'Zillow'
WHERE	AgentID = 5

-- Retrieve the info 
SELECT	* 
FROM	dbo.AgentsInfo
WHERE	AgentID = 5 and AgentsEmployer = 'Zillow'


-- UPDATE THE CORRECT EMPLOYER INFO
UPDATE dbo.AgentsRating
SET	EmployerName = 'Zillow'
WHERE AgentsName = 'Steve G. Walker'

