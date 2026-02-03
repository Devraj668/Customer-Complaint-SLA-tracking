USE bank_ops;


-- View all data
SELECT * FROM complaints;

-- Total tickets
SELECT COUNT(*) FROM complaints;

-- SLA Compliance %
SELECT 
ROUND(SUM(CASE WHEN SLA_Breached='No' THEN 1 ELSE 0 END)*100/COUNT(SLA_Breached),2)
AS SLA_Compliance
FROM complaints;

-- Complaint Priority Type %
SELECT Priority, COUNT(*) AS Total
FROM complaints
GROUP BY Priority
ORDER BY CASE priority
	WHEN 'low' THEN 1
	WHEN 'medium' THEN 2
	WHEN 'high' THEN 3 END
    asc ;

-- Complaints by issue type
SELECT Issue_Type, COUNT(*) AS Total
FROM complaints
GROUP BY Issue_Type
ORDER BY Total DESC;

-- High priority open tickets
SELECT * FROM complaints
WHERE Priority='High' AND Status!='Closed';

-- Agent-wise ticket handling
SELECT Agent_Name, COUNT(*) AS Tickets_Handled
FROM complaints
GROUP BY Agent_Name;




