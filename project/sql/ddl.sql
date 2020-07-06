create database CourseRegistration;
use CourseRegistration;

select * from Certificate;
select * from Advisor;
select * from Department;

delete from Department;

use sample;
drop database CourseRegisteration;

Create table Campus(
	[CampusID] int not null,
	[Name] varchar(20) not null,
	[Location] varchar(100) null,
	CONSTRAINT [prim_Campus] PRIMARY KEY CLUSTERED 
	([CampusID] ASC
	)
) ON [PRIMARY];

Create table Classroom(
	[ClassroomID] int not null,
	[Location] varchar(100) null,
	[Capacity] int null,
	CONSTRAINT [prim_Classroom] PRIMARY KEY CLUSTERED
	([ClassroomID] ASC
	)
) ON [Primary];

Create table Course(
	[CourseID] int not null,
	[Name] varchar(20) not null,
	[Prerequisite] varchar(100) null,
	[Credit] numeric not null,
	[CDescription] varchar(200) null,
	CONSTRAINT [prim_Course] PRIMARY KEY CLUSTERED
	([CourseID] ASC
	)
) ON [Primary];


create table Department
(
	DepartmentID int not null,
	Name varchar(50) not null,
	Address varchar(100) not null,
	Contact varchar(100) not null,
	Description varchar(200),
	CONSTRAINT Department_PK PRIMARY KEY (DepartmentID)
);

create table Major
(
	MajorID int not null,
	DepartmentID int not null,
	Name varchar(25) not null,
	Description varchar(200),
	Requirement varchar(200),
	CONSTRAINT Major_PK PRIMARY KEY (MajorID),
	CONSTRAINT Major_FK FOREIGN KEY (DepartmentID) references Department(DepartmentID),
);

create table Faculty
(
	FacultyID int not null,
	DepartmentID int not null,
	Name varchar(50),
	Contact varchar(100),
	Office varchar(100),
	IsAdvisor varchar(1) constraint IsAdvisor_CHK check (IsAdvisor in ('Y','N')),
	IsInstructor varchar(1) constraint IsInstructor_CHK check (IsInstructor in ('Y','N')),
	CONSTRAINT Faculty_PK PRIMARY KEY (FacultyID),
	CONSTRAINT Faculty_FK FOREIGN KEY (DepartmentID) references Department(DepartmentID),
	check (IsAdvisor = 'Y' or IsInstructor = 'Y')
);

create table Advisor
(
	AdvisorID int not null,
	CONSTRAINT Advisor_PK PRIMARY KEY (AdvisorID),
	CONSTRAINT Advisor_FK FOREIGN KEY (AdvisorID) references Faculty(FacultyID)
);

create table Instructor
(
	InstructorID int not null,
	Title varchar(50) not null,
	ResearchInterest varchar(200),
	Rate numeric(2,1),
	CONSTRAINT Instructor_PK PRIMARY KEY (InstructorID),
	CONSTRAINT Instructor_FK FOREIGN KEY (InstructorID) references Faculty(FacultyID)
);

CREATE TABLE Student
(
	StudentID int identity(1,1) not null,
	CampusID int  not null,
	AdvisorID int  not null,
	FirstName varchar(25),
	LastName varchar(25),
	Email varchar(40),
	Address varchar(100),
	PhoneNumber varchar(10),
	CONSTRAINT Student_PK PRIMARY KEY (StudentID),
	CONSTRAINT Student_FK1 FOREIGN KEY (CampusID) REFERENCES Campus(CampusID),
	CONSTRAINT Student_FK2 FOREIGN KEY (AdvisorID) REFERENCES Advisor(AdvisorID)
);

create table Certificate
(
	MajorID int not null,
	StudentID int not null,
	MajorDeclaredDate date,
	Description varchar(100),
	CONSTRAINT Certificate_PK PRIMARY KEY (MajorID,StudentID),
	CONSTRAINT Certificate_FK1 FOREIGN KEY (MajorID) references Major(MajorID),
	CONSTRAINT Certificate_FK2 FOREIGN KEY (StudentID) references Student(StudentID)
);

Create table Section(
	[SectionID] int not null,
	CourseID int not null,
	[ClassroomID] int not null,
	[InstructorID] int not null,
	[CampusID] int not null,
	[Time] datetime null,
	Capacity int null,
	CONSTRAINT [prim_Section] PRIMARY KEY CLUSTERED
	([SectionID] ASC
	)
) ON [Primary];

ALTER TABLE [Section]  WITH CHECK ADD  CONSTRAINT [foreign1_sec] FOREIGN KEY([CampusID])
REFERENCES [Campus] ([CampusID])

ALTER TABLE [Section] CHECK CONSTRAINT [foreign1_sec]


ALTER TABLE [Section]  WITH CHECK ADD  CONSTRAINT [foreign2_sec] FOREIGN KEY([ClassroomID])
REFERENCES [Classroom] ([ClassroomID])

ALTER TABLE [Section] CHECK CONSTRAINT [foreign2_sec]


ALTER TABLE [Section]  WITH CHECK ADD  CONSTRAINT [foreign3_sec] FOREIGN KEY([CourseID])
REFERENCES [Course] ([CourseID])

ALTER TABLE [Section] CHECK CONSTRAINT [foreign3_sec]

ALTER TABLE [Section]  WITH CHECK ADD  CONSTRAINT [foreign4_sec] FOREIGN KEY([InstructorID])
REFERENCES [Instructor] ([InstructorID])

ALTER TABLE [Section] CHECK CONSTRAINT [foreign4_sec]


create table MajorRequirement
(
	MajorID int not null,
	CourseID int not null,
	Status varchar(1) constraint Status_CHK check (Status in ('Y','N')),
	EffectDate date,
	CONSTRAINT MajorRequirement_PK PRIMARY KEY (MajorID,CourseID),
	CONSTRAINT MajorRequirement_FK1 FOREIGN KEY (MajorID) references Major(MajorID),
	CONSTRAINT MajorRequirement_FK2 FOREIGN KEY (CourseID) references Course(CourseID)
);

CREATE TABLE Registration (
		RegistrationID int identity(1,1) not null,
		StudentID int not null,
		SectionID int  not null,
		RegistrationDate datetime,
		Description varchar(50),
		RegistrationType varchar(10),
		Score numeric (3,2),
		LetterGrade char(2),
	CONSTRAINT Registration_PK PRIMARY KEY (RegistrationID),
	CONSTRAINT Registration_FK1 FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
	CONSTRAINT Registration_FK2 FOREIGN KEY (SectionID) REFERENCES Section(SectionID)
);

/*Computed Columns based on a function*/
alter table Course
add QualifiedHours as 4*Credit
select * from course

/*Non-clustered indexes*/
create index AdvisorIDX
on [dbo].[Advisor]([AdvisorID])
create index CampusIDX
on [dbo].[Campus]([CampusID])
create index CertificateIDX
on [dbo].[Certificate]([MajorID])
create index ClassroomIDX
on [dbo].[Classroom]([ClassroomID])
create index CourseIDX
on [dbo].[Course]([CourseID])
create index DepartmentIDX
on [dbo].[Department]([DepartmentID])
create index FacultyIDX
on [dbo].[Faculty]([FacultyID])
create index InstructorIDX
on [dbo].[Instructor]([InstructorID])
create index MajorIDX
on [dbo].[Major]([MajorID],[Name])
create index MajorRequirementIDX
on [dbo].[MajorRequirement]([MajorID])
create index RegistrationIDX
on [dbo].[Registration]([RegistrationID],[RegistrationDate])
create index SectionIDX
on [dbo].[Section]([SectionID])
create index StudentIDX
on [dbo].[Student]([StudentID])