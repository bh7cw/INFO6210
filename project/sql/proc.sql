/*at least 3 stored procedures containing input and output parameters*/
/*get the number of students in given campus*/
use CourseRegisteration;
SELECT * FROM Advisor;
select * from Registration r ;

Create procedure GetStudentsInCampus @CampusID int
as
begin
	
	select CampusID, COUNT(*) as NumberOfStudents
	from Student
	group by CampusID
	having CampusID = @CampusID
end

exec GetStudentsInCampus '1'

/*check the students who registered given course*/
create procedure GetStudentRegisteredCourse @CourseID int
as
begin
	select r.RegistrationID, r.StudentID, r.SectionID
	from Registration r join Section s
	on r.SectionID = s.SectionID
	where s.CourseID = @CourseID
end

exec GetStudentRegisteredCourse '1'

/*check the first date to declare certificate to students*/
create procedure GetMinMajorDeclaredDate @MinDate date output
as
declare @EarliestDate date
begin
	select @EarliestDate=max(MajorDeclaredDate)
	from Certificate

	set @MinDate=@EarliestDate
end

declare @EarliestDate date
exec GetMinMajorDeclaredDate @EarliestDate output
select @EarliestDate

/*at least 2 views (often used for reporting purposes)*/
/*check those students who have registered courses*/
create view StudentRegisteredCourse as
select r.StudentID, s.FirstName, s.LastName
from Registration r join Student s
on r.StudentID = s.StudentID

select * from StudentRegisteredCourse

/*check the students registration information in Boston campus*/
create view GetRegisterationByCampus as
select r.StudentID, s.FirstName, s.LastName, r.RegistrationDate, r.SectionID, r.Score
from Registration r join Student s
on r.StudentID = s.StudentID
where s.CampusID = 1

select * from GetRegisterationByCampus

/*check the instructors who have the registered course*/
create view RegisteredCourseInformation as
select r.RegistrationDate, r.StudentID, s.CourseID, s.InstructorID, f.Name, i.Rate
from Section s join Registration r on s.SectionID = s.SectionID
join Instructor i on i.InstructorID=s.InstructorID
join Faculty f on f.FacultyID = i.InstructorID

select * from RegisteredCourseInformation

/*At least 1 trigger*/
/*trigger to record the registration information before update, first we create a table
,then we create trigger, update the registration table and 
check the trigger operates successfully*/
CREATE TABLE [dbo].[RegistrationAudit](
	[RegistrationAuditID] [int] primary key IDENTITY(1,1) NOT NULL,
	[RegistrationID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[SectionID] [int] NOT NULL,
	[RegistrationDate] [datetime] NULL,
	[Description] [varchar](50) NULL,
	[RegistrationType] [varchar](10) NULL,
	[Score] [int] NULL,
	[LetterGrade] [char](2) NULL,
	[Action] char(1),
	[ActionDate] datetime
)

Create TRIGGER RegistrationHistory ON  Registration
after UPDATE
AS 
BEGIN
	insert into [dbo].[RegistrationAudit]([RegistrationID],[StudentID],[SectionID],[RegistrationDate],
	[Description],[RegistrationType],[Score],[LetterGrade],[Action],[ActionDate])
	(select d.RegistrationID, d.StudentID, d.SectionID, d.RegistrationDate, d.Description,
	d.RegistrationType, d.Score, d.LetterGrade, 'U', GETDATE()
	from deleted d)
END

select * from [RegistrationAudit]
select * from [Registration]
update [Registration] set SectionID = 1 where RegistrationID = 1