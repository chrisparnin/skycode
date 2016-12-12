CREATE TABLE Posts
(
    id int, 
    created_at TIMESTAMP, 
    name varchar(255), 
    tagline varchar(1000), 
    user_id int, 
    user_username varchar(255), 
    votes_count int, 
    comments_count int, 
    redirect_url varchar(500), 
    discussion_url varchar(500)
);

CREATE TABLE Users
(
    Id int PRIMARY KEY,
    Reputation int,
    CreationDate TIMESTAMP,
    DisplayName varchar (40),
    LastAccessDate TIMESTAMP,
    WebsiteUrl varchar (200),
    Location varchar (100),
    AboutMe text,
    Views int,
    UpVotes int,
    DownVotes int,
    ProfileImageUrl varchar (200),
    Age int,
    AccountId int
);