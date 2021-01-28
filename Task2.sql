
--2) By day, show the total number of registrations, comments, and posts created. The output should look like the following:
--
--Date            # of Registrations      # of Comments       # of Posts Created

--2019-08-01      50                      10                  20

--2019-08-02      43                      13                  13

Select 
FORMAT(event_time, 'yyyy-MM-dd') as [Date], --convert the datetime to the requested format
SUM(CASE WHEN event = 'register'  THEN 1 END) as [# of Registrations],
SUM(CASE WHEN event = 'comment'  THEN 1 END) as [# of Comments],
SUM(CASE WHEN event = 'createPost'  THEN 1 END) as [# of Posts Created]

 from [dbo].[Actions]
 GROUP BY FORMAT(event_time, 'yyyy-MM-dd') 
 ORDER BY FORMAT(event_time, 'yyyy-MM-dd') asc
