--3) Show the number of new users by month and state. Here's a sample output:

--Month       State           # of New Users

--2019-01     California      50

--2019-02     California      45

SELECT 
FORMAT(US.created_at_timestamp, 'yyyy-MM') as Month,
LOC.State as State,
COUNT(US.user_id) as [# of New Users]
FROM [dbo].[User] US
INNER JOIN dbo.Location LOC ON US.user_id = LOC.user_id
GROUP BY FORMAT(US.created_at_timestamp, 'yyyy-MM'), LOC.State
ORDER BY LOC.State,FORMAT(US.created_at_timestamp, 'yyyy-MM')  ASC