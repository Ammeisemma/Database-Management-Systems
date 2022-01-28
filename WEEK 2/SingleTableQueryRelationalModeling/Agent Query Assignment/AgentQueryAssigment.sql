-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 23, 2021.
-- Last Edited August 30, 2021.
-- Single Table Query,'Agent" Assignment


-- Result for Information Request 1
-- SELECT Agent Last Name, First Name, and Phone Number for all agents
SELECT 
agentLName, agentFName, agentPhone 
FROM
SALESAGENT;

-- Result for Information Request 2
-- SELECT Agent Last Name, First Name, and Phone Number for all agents

SELECT 
agentFName, agentLName, AgentStreetNum, AgentStreet, agentCity, AgentState, agentZip
FROM 
SALESAGENT
WHERE AgentState = "PA" or AgentState = "NY" or AgentState = "DE";

-- Result for Information Request 3
-- SELECT Agent ID, Full Name, and Phone Number 
-- for Agents earn more than fifty thousand in pay and also 2 dependents
SELECT 
agentCode, agentFName, agentLName, agentPhone
FROM 
SALESAGENT
WHERE AgentDep > 2 and ytdPay > 50000;

-- Result for Information Request 4
-- SELECT Agents Name and Phone 
-- for agents hired between January 1 st 2001 and August 30 th 2010
SELECT 
agentFName, agentLName, agentPhone 
FROM
SALESAGENT
WHERE dateHired > 2001-01-01 and dateHired < 2010-08-30;

-- Result for Information Request 5
-- SELECT Agent ID, Name Phone
-- for agents that aren't salaried and have more than 250_000 in sales

SELECT 
agentCode, agentFName, agentLName, agentPhone 
FROM
SALESAGENT
WHERE Salaried = false and  ytdSales > 250000;
