/*
Introduction: CREATE AND POPULATE TABLES, ADD CONSTRAINTS, Identity, Primary and Foreign Key
*/

-- Create customer table info
-- (Identity, PK KEY) 
CREATE TABLE dbo.CustomersInfo 
(
CustomerID	INT   PRIMARY KEY, 
CustomerName VARCHAR(50) NOT NULL, 
City VARCHAR(50)  NULL,
State VARCHAR(50) NULL
)
-- INSERT VALUE INTO TABLE
INSERT INTO dbo.CustomersInfo (CustomerID,CustomerName,City,State)
VALUES
(1,'Denny Johnson', 'Richardson','TX'),
(2,' F.N. Gray','Plano', 'TX'),
(3,'Denzel Washington', 'L.A', 'CA'),
(4,'Samir Khan', 'Dallas', 'T.X'),
(5,'Adib Kazi', 'NYC', 'N.Y.'),
(6,'John Stewart', 'Boston', 'MA')



-- Create Agent table info
CREATE TABLE dbo.AgentsInfo
(
AgentID INT PRIMARY KEY,
AgentsName VARCHAR(50) NOT NULL,
AgentsEmployer VARCHAR(50) NOT NULL,
AgentsPhoneNumber NVARCHAR(50) NOT NULL,
AgentsEmailAddress NVARCHAR(100) NULL

)
-- INSERT INTO TABLE VALUES 
INSERT INTO dbo.AgentsInfo (AgentID,AgentsName,AgentsEmployer,AgentsPhoneNumber,AgentsEmailAddress)
VALUES 
(1,'Sam Van','Zillow',2346789099,'samvan@gmail.com'),
(2,'S.V. Fenny','Realtor.com',2341112122,'Fenny21@outlook.com'),
(3,'Liz John','AirBNB',6789090087,'Liz@Airbnb.com'),
(4,'Akshay Kumar',' IndiaReals',4567892122,'Akshay@india.com     '),
(5,'Steve G. Walker','Zillaws',3900983321,'Steve@gmail.com'),
(6,'Henry G. Van','AirBNB',39120984421,'Hery@gmail.com')

-- Customers Financial Info
CREATE TABLE dbo.Customes_Financial
(
CustomerName VARCHAR(50) NOT NULL,
CreditCard VARCHAR(50) NOT NULL,
TotalFee MONEY	NOT NULL,
CardNumber INT NOT NULL,
ExpMonth INT NOT NULL,
ExpYear INT NOT NULL
) 

-- INSERT DATA
INSERT INTO dbo.Customes_Financial (CustomerName,CreditCard,TotalFee,CardNumber,ExpMonth,ExpYear)
VALUES
('Denny Johnson','American Express',13478.00,4695310,12,2022),
(' F.N. Gray', 'MasterCard',45678.00,27249722,05,2002),
('Denzel Washington','Citi Bank',34390.00,4467548,06,2003),
('Samir Khan','MasterCard',19852.00,5847802,10,2016),
('Adib Kazi', 'AppleCard',45425.00,712142,06,2003),
('John Stewart', 'CitiBank',22389.00,892135,07,2009)

-- Agents Rating
CREATE TABLE dbo.AgentsRating 
(
AgentsName VARCHAR(50) NOT NULL,
AgentsRating INT NOT NULL,
EmployerName VARCHAR(50) NOT NULL,
EmployersRating VARCHAR(50) NULL
)

-- INSERT AGENT RATING TABLE 
INSERT INTO dbo.AgentsRating (AgentsName,AgentsRating,EmployerName,EmployersRating)
VALUES
('Sam Van',30,'Zillow','B'),
('S.V. Fenny',70,'Realtor.com','C'),
('Liz John',40,'AirBNB','D'),
('Akshay Kumar',85,' IndiaReals','F-'),
('Steve G. Walker',40,'Zillaws','D')
