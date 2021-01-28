--Create the SQL Tables 

-- Table Name : User
-- Fields : user_id PK, name, created_at_timestamp
-- Example values : 12345       John Doe        2019-08-01 10:20:33
CREATE TABLE [User] (
    user_id int NOT NULL PRIMARY KEY,
    name varchar(255) NOT NULL,
    created_at_timestamp datetime NOT NULL
    -- It would normally be a timestamp data field, but since i needed to do manual inserts for test data, datetime was chosen
);


-- Table Name :  Actions
-- Fields : user_id FK, event, event_time 
-- Example values :                
-- 12345       Register        2019-08-01 10:20:33
-- 12345       Comment         2019-08-01 10:25:00

CREATE TABLE [Actions] (
    user_id int NOT NULL FOREIGN KEY REFERENCES [User](user_id),
    event varchar(255) NOT NULL,
    event_time datetime NOT NULL, -- It would normally be a timestamp data field, but since i needed to do manual inserts for test data, datetime was chosen
    CONSTRAINT PK_Action PRIMARY KEY (user_id,event_time)
);


-- Table Name :  Sessions
-- Fields : user_id, session_start_timestamp, session_duration
-- Example value :            
-- 12345       2019-08-01 10:20:33     600

CREATE TABLE [Sessions] (
    user_id int NOT NULL FOREIGN KEY REFERENCES [User](user_id),
    session_duration int NOT NULL,
    session_start_timestamp datetime NOT NULL, -- It would normally be a timestamp data field, but since i needed to do manual inserts for test data, datetime was chosen
    CONSTRAINT PK_Session PRIMARY KEY (user_id,session_start_timestamp)
);


-- Table Name :  Location
-- Fields : user_id, country, state, city
-- Example value :            
-- 12345       USA     California      Los Angeles

CREATE TABLE [Location] (
    user_id int NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES [User](user_id),
    country varchar(255) NOT NULL,
    state varchar(255) NOT NULL,
    city varchar(255) NOT NULL
);



