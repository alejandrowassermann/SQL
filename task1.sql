--1) Show the number of users still here day by day for their first 7 days since they joined. Sort the results ascending from Day 0 to 7. The output should like the following example:

--Day from Registration       # of Users with Session
--0                           50
--1                           45
--2                           48
--3                           32              

SELECT   DATEDIFF(day, US.created_at_timestamp,SES.session_start_timestamp ) as [Day from Registration], 
        COUNT(distinct US.user_id) as [# of Users with Session]
FROM dbo.Sessions SES 
LEFT JOIN [dbo].[User] US ON US.user_id = SES.user_id
WHERE 
(DATEDIFF(day, US.created_at_timestamp,SES.session_start_timestamp) BETWEEN 0 AND 7) 
GROUP BY DATEDIFF(day, US.created_at_timestamp,SES.session_start_timestamp)
ORDER BY DATEDIFF(day, US.created_at_timestamp,SES.session_start_timestamp) ASC

