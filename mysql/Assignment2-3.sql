DROP DATABASE IF EXISTS AssignmentTesting;
CREATE DATABASE AssignmentTesting;
USE AssignmentTesting;

CREATE TABLE Department(
	DepartmentID			TINYINT PRIMARY KEY,
    DepartmentName			CHAR(50)
);

CREATE TABLE `position`(
	PositionID				TINYINT,
    PositionName			CHAR(50)
);

CREATE TABLE `Account`(
	AccountID				SMALLINT,
    Email					CHAR(50)
);

CREATE TABLE `Group`(
	GroupID					TINYINT,
    GroupName				CHAR(50),
    CreatorID				TINYINT,
    CreateDate				DATE
);

CREATE TABLE GroupAccount(
	GroupID					TINYINT,
    AccountID				SMALLINT,
    CreatorID				TINYINT,
    JoinDate				DATE
);

CREATE TABLE TypeQuestion(
	TypeID					TINYINT,
    TypeName				CHAR(50)
);

CREATE TABLE CategoryQuestion(
	CategoryID				TINYINT,
    CategoryName			CHAR(50)
);

CREATE TABLE Question(
	QuestionID				SMALLINT,
    Content					VARCHARACTER(3000),
    CategoryID				TINYINT,
    TypeID					TINYINT,
    CreatorID				TINYINT,
    CreateDate				DATE
);

CREATE TABLE Answer(
	AnswerID				TINYINT,
    Content					VARCHARACTER(3000),
    QuestionID				SMALLINT,
    isCorrect				ENUM('t','f')
);

