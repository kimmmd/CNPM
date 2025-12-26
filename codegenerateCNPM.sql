/*
Created		12/23/2025
Modified		12/23/2025
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/


Create table [User]
(
	[User_ID] Integer NOT NULL,
	[Full_Name] Varchar(100) NULL,
	[Email] Varchar(100) NULL, UNIQUE ([Email]),
	[Password_Hash] Varchar(100) NULL,
	[Role] Varchar(100) NULL,
	[Status] Varchar(100) NULL,
	[Created_At] Datetime NULL,
	[Update_At] Datetime NULL,
	[Department_ID] Integer NOT NULL,
Primary Key ([User_ID])
) 
go

Create table [Course]
(
	[Course_ID] Integer NOT NULL,
	[Code] Varchar(8000) NULL,
	[Title] Varchar(100) NULL,
	[Description] Text NULL,
	[Department_ID] Integer NOT NULL,
Primary Key ([Course_ID])
) 
go

Create table [Department]
(
	[Department_ID] Integer NOT NULL,
	[Name] Varchar(100) NULL,
	[Description] Text NULL,
Primary Key ([Department_ID])
) 
go

Create table [Class]
(
	[Class_ID] Integer NOT NULL,
	[Year] Varchar(8000) NULL,
	[Semeter] Varchar(100) NULL,
	[Course_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Class_ID])
) 
go

Create table [Project]
(
	[Project_ID] Integer NOT NULL,
	[Title] Varchar(100) NULL,
	[Description] Text NULL,
	[Status] Varchar(100) NULL,
	[Start_Date] Datetime NULL,
	[End_Date] Datetime NULL,
	[Course_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Project_ID])
) 
go

Create table [Group]
(
	[Group_ID] Integer NOT NULL,
	[Project_Assignment_ID] Integer NOT NULL,
	[Name] Varchar(100) NULL,
	[Created_At] Datetime NULL,
	[Group_Member_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Group_ID])
) 
go

Create table [Milestone]
(
	[Milestone_ID] Integer NOT NULL,
	[Title] Varchar(100) NULL,
	[Description] Text NULL,
	[Due_Date] Datetime NULL,
	[Completed_At] Datetime NULL,
	[Group_ID] Integer NOT NULL,
Primary Key ([Milestone_ID])
) 
go

Create table [Sprint_Task]
(
	[Task_ID] Integer NOT NULL,
	[Title] Varchar(100) NULL,
	[Description] Text NULL,
	[Status] Varchar(20) NULL,
	[Created_At] Datetime NULL,
	[Due_Date] Datetime NULL,
	[Group_ID] Integer NOT NULL,
	[Assessment_ID] Integer NOT NULL,
Primary Key ([Task_ID])
) 
go

Create table [Assessment]
(
	[Assessment_ID] Integer NOT NULL,
	[Title] Varchar(20) NULL,
	[Description] Text NULL,
	[Max_Score] Float NULL,
	[Project_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Assessment_ID])
) 
go

Create table [Resource_File]
(
	[File_ID] Integer NOT NULL,
	[File_Name] Varchar(100) NULL,
	[File_Type] Varchar(100) NULL,
	[Url] Text NULL,
	[Uploaded_At] Datetime NULL,
	[Group_ID] Integer NOT NULL,
	[Class_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([File_ID])
) 
go

Create table [Meeting]
(
	[Meeting_ID] Integer NOT NULL,
	[Topic] Varchar(100) NULL,
	[Start_Time] Datetime NULL,
	[End_Time] Datetime NULL,
	[Meeting_Link] Text NULL,
	[Group_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Meeting_ID])
) 
go

Create table [Chat_Message]
(
	[Message_ID] Integer NOT NULL,
	[Content] Text NULL,
	[Sent_At] Datetime NULL,
	[Group_ID] Integer NOT NULL,
	[Class_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Message_ID])
) 
go

Create table [Notification]
(
	[Notification_ID] Integer NOT NULL,
	[Type] Varchar(100) NULL,
	[Payload] Text NULL,
	[Is_Read] Tinyint NULL,
	[Sent_At] Datetime NULL,
	[User_ID] Integer NOT NULL,
Primary Key ([Notification_ID])
) 
go

Create table [Ai_Suggestion]
(
	[Suggestion_ID] Integer NOT NULL,
	[Content] Text NULL,
	[Created_At] Datetime NULL,
	[Project_ID] Integer NOT NULL,
	[Group_ID] Integer NOT NULL,
Primary Key ([Suggestion_ID])
) 
go

Create table [Enrollment]
(
	[User_ID] Integer NOT NULL,
	[Class_ID] Integer NOT NULL,
	[Enrollment_ID] Integer NOT NULL,
	[Role_In_Class] Varchar(100) NULL,
	[Enrolled_At] Datetime NULL,
Primary Key ([Enrollment_ID])
) 
go

Create table [Group_Member]
(
	[User_ID] Integer NOT NULL,
	[Group_ID] Integer NOT NULL,
	[Group_Member_ID] Integer NOT NULL, UNIQUE ([Group_Member_ID]),
	[Contribution_Percent] Float NULL,
	[Joined_At] Datetime NULL,
Primary Key ([Group_Member_ID])
) 
go

Create table [Project_Assignment]
(
	[Project_ID] Integer NOT NULL,
	[Class_ID] Integer NOT NULL,
	[Project_Assignment_ID] Integer NOT NULL,
	[Assigned_At] Datetime NULL,
Primary Key ([Project_Assignment_ID])
) 
go

Create table [Task_Asignment]
(
	[Task_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
	[Task_Assignment_ID] Integer NOT NULL,
	[Assigned_At] Datetime NULL,
	[Completed_At] Datetime NULL,
Primary Key ([Task_Assignment_ID])
) 
go

Create table [Submission]
(
	[Group_ID] Integer NOT NULL,
	[User_ID] Integer NOT NULL,
	[Assessment_ID] Integer NOT NULL,
	[Submission_ID] Integer NOT NULL,
	[Score] Float NULL,
	[Feedback] Text NULL,
Primary Key ([Submission_ID])
) 
go

Create table [Peer_Review]
(
	[User_ID] Integer NOT NULL,
	[Submission_ID] Integer NOT NULL,
	[Review_ID] Integer NOT NULL,
	[Score] Float NULL,
	[Comments] Text NULL,
	[Created_At] Datetime NULL,
Primary Key ([Review_ID])
) 
go


Alter table [Enrollment] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Group_Member] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Notification] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Class] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Project] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Group] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Task_Asignment] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Assessment] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Submission] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Peer_Review] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Meeting] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Resource_File] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Chat_Message] add  foreign key([User_ID]) references [User] ([User_ID])  on update no action on delete no action 
go
Alter table [Project] add  foreign key([Course_ID]) references [Course] ([Course_ID])  on update no action on delete no action 
go
Alter table [Class] add  foreign key([Course_ID]) references [Course] ([Course_ID])  on update no action on delete no action 
go
Alter table [Course] add  foreign key([Department_ID]) references [Department] ([Department_ID])  on update no action on delete no action 
go
Alter table [User] add  foreign key([Department_ID]) references [Department] ([Department_ID])  on update no action on delete no action 
go
Alter table [Enrollment] add  foreign key([Class_ID]) references [Class] ([Class_ID])  on update no action on delete no action 
go
Alter table [Project_Assignment] add  foreign key([Class_ID]) references [Class] ([Class_ID])  on update no action on delete no action 
go
Alter table [Resource_File] add  foreign key([Class_ID]) references [Class] ([Class_ID])  on update no action on delete no action 
go
Alter table [Chat_Message] add  foreign key([Class_ID]) references [Class] ([Class_ID])  on update no action on delete no action 
go
Alter table [Project_Assignment] add  foreign key([Project_ID]) references [Project] ([Project_ID])  on update no action on delete no action 
go
Alter table [Assessment] add  foreign key([Project_ID]) references [Project] ([Project_ID])  on update no action on delete no action 
go
Alter table [Ai_Suggestion] add  foreign key([Project_ID]) references [Project] ([Project_ID])  on update no action on delete no action 
go
Alter table [Group_Member] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Milestone] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Sprint_Task] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Resource_File] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Meeting] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Ai_Suggestion] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Chat_Message] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Submission] add  foreign key([Group_ID]) references [Group] ([Group_ID])  on update no action on delete no action 
go
Alter table [Task_Asignment] add  foreign key([Task_ID]) references [Sprint_Task] ([Task_ID])  on update no action on delete no action 
go
Alter table [Sprint_Task] add  foreign key([Assessment_ID]) references [Assessment] ([Assessment_ID])  on update no action on delete no action 
go
Alter table [Submission] add  foreign key([Assessment_ID]) references [Assessment] ([Assessment_ID])  on update no action on delete no action 
go
Alter table [Group] add  foreign key([Group_Member_ID]) references [Group_Member] ([Group_Member_ID])  on update no action on delete no action 
go
Alter table [Group] add  foreign key([Project_Assignment_ID]) references [Project_Assignment] ([Project_Assignment_ID])  on update no action on delete no action 
go
Alter table [Peer_Review] add  foreign key([Submission_ID]) references [Submission] ([Submission_ID])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


