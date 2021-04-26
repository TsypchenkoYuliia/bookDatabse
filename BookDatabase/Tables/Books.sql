CREATE TABLE [dbo].[Books]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(100) NOT NULL, 
    [isActive] BIT NOT NULL,
    [PublisherId] INT NULL, 
    FOREIGN KEY (PublisherId)  REFERENCES Publishers (Id)
)
