CREATE DATABASE news

CREATE TABLE [categories] (
  [id] int NOT NULL,
  [name] nvarchar(200) NOT NULL,
  PRIMARY KEY ([id])
);
 
 CREATE TABLE [users] (
  [id] int NOT NULL,
  [username] nvarchar(50) NOT NULL,
  [password] nvarchar(40) NOT NULL,
  [fullname] nvarchar(50) NOT NULL,
  PRIMARY KEY ([id])
  );

CREATE TABLE [news] (
  [id] int NOT NULL,
  [category_id] int NOT NULL,
  [name] nvarchar(255) NOT NULL,
  [description] nvarchar(255) NOT NULL,
  [detail] text NOT NULL,
  [image] nvarchar(255) NOT NULL,
  [date] datetime NOT NULL DEFAULT GETDATE(),
  [user_id] int NOT NULL,
  PRIMARY KEY ([id], [category_id], [user_id]),
  CONSTRAINT [FK_news_categories] FOREIGN KEY ([category_id]) REFERENCES [categories] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT [FK_news_users] FOREIGN KEY ([user_id]) REFERENCES [users] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);


