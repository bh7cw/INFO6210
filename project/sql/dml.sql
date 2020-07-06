ALTER TABLE Department 
ALTER COLUMN [Name] varchar(50);

use CourseRegisteration;

--campus
Insert into Campus Values ('1', 'Boston', '360 Huntington Ave, Boston, MA 02115');
Insert into Campus Values ('2', 'Seattle', '401 Terry Ave N #103, Seattle, WA 98109');
Insert into Campus Values ('3', 'Beijing', '5 Zhongguancun Ave, Beijing, CHN 100060');
Insert into Campus Values ('4', 'Shanghai', '66 Waitan Street, Shanghai, CHN 200017');
Insert into Campus Values ('5', 'Austin', '160 Bridge Ave, Austin, TX 73301');
Insert into Campus Values ('6', 'NY', 'Five Ave, New York, NY 10021');
Insert into Campus Values ('7', 'SF', '101 New Fremont, San Francisco, CA 92013');
Insert into Campus Values ('8', 'Chengdu', '10 Xichun Street, Chengdu, Sichuan, CHN 98109');
Insert into Campus Values ('9', 'Hongkong', '200 Victoria Street, Hongkong, CHN 999077');
Insert into Campus Values ('10', 'Madison', '702 West Johnson Street, Suite 1101, Madison, WI 53715');


--table classroom
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (1, N'101 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (2, N'102 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (3, N'103 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (4, N'104 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (5, N'205 Hallman', 100)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (6, N'106 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (7, N'107 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (8, N'108 Hallman', 100)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (9, N'309 Hallman', 50)
INSERT [dbo].[Classroom] ([ClassroomID], [Location], [Capacity]) VALUES (10, N'110 Hallman', 50)

--table course
INSERT INTO Course VALUES(1,'IS6210',null,4,'Database');
INSERT INTO Course VALUES(2,'IS6205',null,4,'Algorithm');
INSERT INTO Course VALUES(3,'IS6200',null,4,'OOD');
INSERT INTO Course VALUES(4,'IS7200',null,4,'Cloud Computing');
INSERT INTO Course VALUES(5,'IS7374','INFO6200',4,'DevOps');
INSERT INTO Course VALUES(6,'CS6200',null,4,'Operating System');
INSERT INTO Course VALUES(7,'CS7374','INFO6105',4,' AI');
INSERT INTO Course VALUES(8,'IS6105',null,4,'Data Science');
INSERT INTO Course VALUES(9,'IS6520',null,4,'Big Data');
INSERT INTO Course VALUES(10,'CS7200','INFO6520',4,'Scala');

--table department
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (1, N'College of Engineering', N'101 Snell Building', 617285111, N'Include CSE, IS, ME, EE etc')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (2, N'School of Business', N'101 Yifu Building', 617285112, N'Manily musiness studies, like finance')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (3, N'College of Computer Science', N'101 West Village', 617285113, N'Different directions in CS')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (4, N'College of Arts', N'101 East Village', 617285114, N'Include music, dance')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (5, N'College of Professional Studies', N'101 North Village', 617285115, N'Include Management etc')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (6, N'College of Science', N'201 Snell Building', 617285116, N'Include Math etc')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (7, N'College of Humanities', N'101 South Village', 617285117, N'Include  social behavior etc')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (8, N'School of Law', N'301 East Village', 617285118, N'Study on different kinds of laws')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (9, N'College of Health Sciences', N'301 Snell Building', 617285119, N'Include Human, Animal etc')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Address], [Contact], [Description]) VALUES (10, N'School of Education', N'301 North Village', 617285120, N'Include Chinese, English, French etc')

--faculty
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (1, 3, N'Mary', 211111110, N'101 Dina', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (2, 1, N'Bob', 211111111, N'103 Dina', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (3, 2, N'Lucas', 211111112, N'303 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (4, 7, N'Jane', 211111113, N'101 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (5, 6, N'Tom', 211111114, N'102 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (6, 4, N'Anny', 211111115, N'103 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (7, 5, N'Andy', 211111116, N'104 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (8, 8, N'Zoe', 211111117, N'105 Shillman', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (9, 10, N'Tim', 211111118, N'201 Dina', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (10, 9, N'Bonny', 211111119, N'202 Dina', N'N', N'Y')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (11, 10, N'Dameon', 211111120, N'203 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (12, 9, N'Robin', 211111121, N'204 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (13, 8, N'Ben', 211111122, N'205 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (14, 5, N'Andrew', 211111123, N'206 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (15, 7, N'Jenny', 211111124, N'207 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (16, 3, N'Lucy', 211111125, N'208 Dina', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (17, 6, N'Peter', 211111126, N'205 Shillman', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (18, 4, N'Caroline', 211111127, N'206 Shillman', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (19, 1, N'Max', 211111128, N'207 Shillman', N'Y', N'N')
INSERT [dbo].[Faculty] ([FacultyID], [DepartmentID], [Name], [Contact], [Office], [IsAdvisor], [IsInstructor]) VALUES (20, 2, N'Lily', 211111129, N'208 Shillman', N'Y', N'N')

--advisor
INSERT INTO  Advisor VALUES ('11');
INSERT INTO  Advisor VALUES ('12');
INSERT INTO  Advisor VALUES ('13');
INSERT INTO  Advisor VALUES ('14');
INSERT INTO  Advisor VALUES ('15');
INSERT INTO  Advisor VALUES ('16');
INSERT INTO  Advisor VALUES ('17');
INSERT INTO  Advisor VALUES ('18');
INSERT INTO  Advisor VALUES ('19');
INSERT INTO  Advisor VALUES ('20');

--instructor
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (1, N'Assistant Professor', N'theory; computational modeling; polymers; composites', 8.3)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (2, N'Assistant Professor', N'bioengineering; systems biology; regenerative medicine', 9)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (3, N'Professor', N'sustainability; polymers', 9.9)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (4, N'Lecturer', N'petroleum engineering; CO2 solubility; carbon capture; high pressure phase behavior', 8.8)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (5, N'Dean Emeritus', N'hydraulic fracturing; geological engineering', 6.8)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (6, N'Assistant Professor', N'polymer, electrolyte, nanoelectronics, transition metal', 7.6)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (7, N'Professor', N'dichalcogenide, graphene, memory', 9.3)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (8, N'Lecturer', N'energy storage; biomaterials', 5.2)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (9, N'Assistant Professor', N'surface science; ionic liquids; wetting; tribology', 7.3)
INSERT [dbo].[Instructor] ([InstructorID], [Title], [ResearchInterest], [Rate]) VALUES (10, N'Professor', N'particulates; cohesive materials; heat transfer; transport', 7.9)

--table student
SET IDENTITY_INSERT Student ON
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(1,1,13,'Quinn','Cook','Quinn@gmail.com','1000 S Figueroa St, Los Angeles, CA 90015','6179499566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(2,1,13,'Alex','Caruso','Alex@gmail.com','1001 S Figueroa St, Los Angeles, CA 90015','4179499566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(3,2,13,'Danny','Green','Danny@gmail.com','1101 S Figueroa St, Los Angeles, CA 90015','6179439566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(4,1,13,'Antyony','Davis','Antyony@gmail.com','1112 S Figueroa St, Los Angeles, CA 90015','1179499566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(5,2,11,'LeBron','James','LeBron@gmail.com','1211 S Figueroa St, Los Angeles, CA 90015','6349499566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(6,1,17,'Dwight','Howard','Dwight@gmail.com','1311 S Figueroa St, Los Angeles, CA 90015','6279499566');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(7,2,15,'Kyle','Kuzma','Kyle@gmail.com','1171 S Figueroa St, Los Angeles, CA 90015','6179499534');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(8,1,11,'Rajon','Rondo','Rajon@gmail.com','1191 S Figueroa St, Los Angeles, CA 90015','6179499523');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(9,2,12,'Avery','Bradley','Avery@gmail.com','1141 S Figueroa St, Los Angeles, CA 90015','6179499567');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,[Address],PhoneNumber) VALUES(10,1,13,'Jared','Dudley','Jared@gmail.com','1111 S Figueroa St, Los Angeles, CA 90015','6179499509');

INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(11,3,11,'Peter','Dan','peter@gmail.com','2179499091');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(12,4,13,'Peng','Da','dapeng@gmail.com','2179499092');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(13,5,15,'Yan','Liu','liuyan@gmail.com','2179499093');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(14,6,12,'Huan','Zhen','zhenhuan@gmail.com','2179499094');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(15,7,16,'Xun','Zhou','zhouxun@gmail.com','2179499095');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(16,8,18,'Wei','Zhao','zhaowei@gmail.com','2179499096');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(17,9,11,'Xinru','Lin','linxinru@gmail.com','2179499097');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(18,10,13,'Tielin','Zhang','zhangtielin@gmail.com','2179499098');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(19,3,12,'Zi','Yang','yangzi@gmail.com','2179499099');
INSERT INTO Student(StudentID,CampusID,AdvisorID,FirstName,LastName,Email,PhoneNumber) VALUES(20,4,11,'Yisan','Zhang','yisan','2179499019');
SET IDENTITY_INSERT Student OFF

--table major
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (1, 1, N'CSYE', N'computer systems engineering', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (2, 1, N'INFO', N'information system', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (3, 1, N'ME', N'mechanical engineering', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (4, 1, N'EE', N'electrical engineering', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (5, 3, N'CS', N'computer science', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (6, 6, N'Math', N'mathmetics', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (7, 4, N'Music', N'music', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (8, 4, N'Dance', N'dance', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (9, 2, N'Finance', N'finance', N'32 credit hours')
INSERT [dbo].[Major] ([MajorID], [DepartmentID], [Name], [Description], [Requirement]) VALUES (10, 8, N'Law', N'law', N'32 credit hours')

--table Certificate
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 1, N'Y', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 2, N'Y', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 3, N'Y', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 4, N'Y', '20170810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 5, N'N', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (3, 6, N'Y', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (3, 7, N'Y', '20160810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 8, N'Y', '20180810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (1, 9, N'Y', '20190810')
INSERT [dbo].[MajorRequirement] ([MajorID], [CourseID], [Status], [EffectDate]) VALUES (3, 10, N'Y', '20180810')

--section
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (1, 1, 1, 1, 1, CAST(N'1899-12-30T18:00:00.000' AS DateTime), 50)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (2, 3, 2, 2, 2, CAST(N'1899-12-30T10:00:00.000' AS DateTime), 100)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (3, 1, 3, 3, 2, CAST(N'1899-12-30T13:30:00.000' AS DateTime), 30)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (4, 4, 4, 4, 1, CAST(N'1899-12-30T18:00:00.000' AS DateTime), 100)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (5, 6, 5, 5, 1, CAST(N'1899-12-30T10:00:00.000' AS DateTime), 50)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (6, 2, 6, 6, 2, CAST(N'1899-12-30T13:30:00.000' AS DateTime), 100)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (7, 5, 7, 7, 2, CAST(N'1899-12-30T18:00:00.000' AS DateTime), 30)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (8, 8, 8, 8, 1, CAST(N'1899-12-30T10:00:00.000' AS DateTime), 50)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (9, 4, 9, 9, 2, CAST(N'1899-12-30T13:30:00.000' AS DateTime), 100)
INSERT [dbo].[Section] ([SectionID], [CourseID], [ClassroomID], [InstructorID], [CampusID], [Time], [Capacity]) VALUES (10, 2, 10, 10, 2, CAST(N'1899-12-30T18:00:00.000' AS DateTime), 30)

--registration
ALTER TABLE Registration 
ALTER COLUMN [Score] int;
SET IDENTITY_INSERT Registration ON
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (1, 3, 2, CAST(N'2016-12-21T00:00:00.000' AS DateTime), NULL, N'registered', 90, N'A')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (2, 6, 1, CAST(N'2016-12-21T00:00:00.000' AS DateTime), NULL, N'registered', 75, N'C')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (3, 7, 1, CAST(N'2016-12-20T00:00:00.000' AS DateTime), NULL, N'registered', 80, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (4, 2, 4, CAST(N'2016-11-20T00:00:00.000' AS DateTime), NULL, N'finished', 40, N'F')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (5, 1, 6, CAST(N'2016-12-12T00:00:00.000' AS DateTime), NULL, N'finished', 88, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (6, 3, 3, CAST(N'2016-12-10T00:00:00.000' AS DateTime), NULL, N'registered', 85, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (7, 4, 4, CAST(N'2016-12-11T00:00:00.000' AS DateTime), NULL, N'finished', 74, N'C')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (8, 7, 4, CAST(N'2016-12-01T00:00:00.000' AS DateTime), NULL, N'registered', 92, N'A')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (9, 7, 4, CAST(N'2016-12-04T00:00:00.000' AS DateTime), NULL, N'finished', 65, N'D')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (10, 9, 2, CAST(N'2016-12-08T00:00:00.000' AS DateTime), NULL, N'registered', 60, N'D')

INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (11, 12, 2, CAST(N'2016-11-21T00:00:00.000' AS DateTime), NULL, N'registered', 90, N'A')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (12, 14, 1, CAST(N'2016-10-21T00:00:00.000' AS DateTime), NULL, N'registered', 75, N'C')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (13, 13, 1, CAST(N'2016-11-10T00:00:00.000' AS DateTime), NULL, N'registered', 80, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (14, 16, 4, CAST(N'2016-11-20T00:00:00.000' AS DateTime), NULL, N'finished', 40, N'F')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (15, 18, 6, CAST(N'2016-11-15T00:00:00.000' AS DateTime), NULL, N'finished', 88, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (16, 15, 3, CAST(N'2016-11-10T00:00:00.000' AS DateTime), NULL, N'registered', 85, N'B')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (17, 20, 4, CAST(N'2016-11-11T00:00:00.000' AS DateTime), NULL, N'finished', 74, N'C')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (18, 11, 4, CAST(N'2016-11-01T00:00:00.000' AS DateTime), NULL, N'registered', 92, N'A')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (19, 17, 4, CAST(N'2016-11-04T00:00:00.000' AS DateTime), NULL, N'finished', 65, N'D')
INSERT [dbo].[Registration] ([RegistrationID], [StudentID], [SectionID], [RegistrationDate], [Description], [RegistrationType], [Score], [LetterGrade]) VALUES (20, 19, 2, CAST(N'2016-11-08T00:00:00.000' AS DateTime), NULL, N'registered', 60, N'D')
SET IDENTITY_INSERT Registration OFF

--table certificate
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 1, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 2, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (3, 3, CAST(N'2018-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 4, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'One and half years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 5, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'One and half years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (3, 6, CAST(N'2017-05-04T00:00:00.000' AS DateTime), N'One and half years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 7, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 8, CAST(N'2016-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (3, 9, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'Two years')
INSERT [dbo].[Certificate] ([MajorID], [StudentID], [MajorDeclaredDate], [Description]) VALUES (1, 10, CAST(N'2019-05-04T00:00:00.000' AS DateTime), N'One and half years')

