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
    id int, 
    created_at TIMESTAMP, 
    name varchar(255)
);