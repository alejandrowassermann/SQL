--Create the SQL Tables 

-- Table Name : User
-- Fields : user_id PK, name, created_at_timestamp
-- Example values : 12345       John Doe        2019-08-01 10:20:33
CREATE TABLE [User] (
    user_id int NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    created_at_timestamp timestamp NOT NULL
    
);


-- Table Name :  Actions
-- Fields : user_id FK, event, event_time 
-- Example values :                
-- 12345       Register        2019-08-01 10:20:33
-- 12345       Comment         2019-08-01 10:25:00

CREATE TABLE [Actions] (
    user_id int NOT NULL FOREIGN KEY REFERENCES [User](user_id),
    event varchar(255) NOT NULL,
    event_time timestamp NOT NULL, 
    CONSTRAINT PK_Action PRIMARY KEY (user_id,event_time)
);
