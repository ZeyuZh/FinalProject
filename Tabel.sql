USE zhengrui;

DROP TABLE IF EXISTS Crusader.[User];
DROP TABLE IF EXISTS Crusader.Chapter;
DROP TABLE IF EXISTS Crusader.NPC;
DROP TABLE IF EXISTS Crusader.[Resource];
DROP TABLE IF EXISTS Crusader.Hero;

CREATE TABLE Crusader.NPC
(
	NPCId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	NPCName NVARCHAR(64) NOT NULL,
	Skill NVARCHAR(64) NOT NULL,
	[Type] NVARCHAR(64) NOT NULL,
	Faction NVARCHAR(64) NOT NULL,
	UNIQUE
	(
		NPCName ASC
	)
);

CREATE TABLE Crusader.[Resource]
(
	ResourceId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ResourceName NVARCHAR(64) NOT NULL,
	[Type] NVARCHAR(64) NOT NULL,
	Usage NVARCHAR(64) NOT NULL,
	Acquisition NVARCHAR(64) NOT NULL,

	UNIQUE
	(
		ResourceName ASC
	)
);

CREATE TABLE Crusader.Hero
(
	HeroId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	HeroName NVARCHAR(128) NOT NULL,
	HP INT NOT NULL,
	ATK	INT NOT NULL,
	SoulboundWeapon NVARCHAR(128) NOT NULL,
	[Contract] NVARCHAR(64) NOT NULL,
	Faction NVARCHAR(64) NOT NULL,
	Class NVARCHAR(64) NOT NULL,

	UNIQUE
	(
		SoulboundWeapon ASC
	)
);

CREATE TABLE Crusader.Chapter
(
	ChapterId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	NPCId INT NOT NULL FOREIGN KEY
		REFERENCES Crusader.NPC(NPCId),
	HeroId INT NOT NULL FOREIGN KEY
		REFERENCES Crusader.Hero(HeroId),
	ResourceId INT NOT NULL FOREIGN KEY
		REFERENCES Crusader.[Resource](ResourceId),
	Episode NVARCHAR(128) NOT NULL,
	ChapterName NVARCHAR(64) NOT NULL,
	Environment NVARCHAR(64) NOT NULL,
	Boss NVARCHAR(64) NOT NULL,
	Cost NVARCHAR(64) NOT NULL,

	UNIQUE
	(
		Environment ASC
	)
);

CREATE TABLE Crusader.[User]
(
	UserId INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserName NVARCHAR(128) NOT NULL,
	UserPassword NVARCHAR(128) NOT NULL,
	UserEmail NVARCHAR(128) NOT NULL,
	Country NVARCHAR(64) NOT NULL,
	Gender NVARCHAR(64) NOT NULL,
	IsAdmin BIT NOT NULL,

	UNIQUE
	(
		UserName ASC,
		UserEmail ASC
	)
);

INSERT Crusader.[User](UserName, UserPassword, UserEmail, Country, Gender, IsAdmin)
VALUES
(N'2533824652', N'971228', N'zhengrui@ksu.edu', N'China', N'Male', N'True'),
(N'33653602', N'971028', N'zeyu@ksu.edu', N'China', N'Male', N'True');
