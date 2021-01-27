--Create the SQL Tables 

-- Table Name : User
-- Fields : user_id, name, created_at_timestamp
-- Example values : 12345       John Doe        2019-08-01 10:20:33
CREATE TABLE [User] (
    user_id int NOT NULL PRIMARY KEY,
    name varchar(255),
    created_at_timestamp timestamp 
    
);