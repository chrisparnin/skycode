CREATE TABLE Posts
(
    Id int PRIMARY KEY,
    PostTypeId tinyint,
    AcceptedAnswerId int,
    ParentId int,
    CreationDate TIMESTAMP,
    DeletionDate TIMESTAMP,
    Score int,
    ViewCount int,
    Body text,
    OwnerUserId int,
    OwnerDisplayName varchar (40),
    LastEditorUserId int,
    LastEditorDisplayName varchar (40),
    LastEditDate TIMESTAMP,
    LastActivityDate TIMESTAMP,
    Title varchar (250),
    Tags varchar (250),
    AnswerCount int,
    CommentCount int,
    FavoriteCount int,
    ClosedDate TIMESTAMP,
    CommunityOwnedDate TIMESTAMP
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

CREATE TABLE Comments
(
    Id int PRIMARY KEY,
    PostId int,
    Score int,
    Text varchar(600),
    CreationDate TIMESTAMP,
    UserDisplayName varchar (30),
    UserId int
);