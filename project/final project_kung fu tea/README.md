# Final project of group Kung Fu Tea

This project is the design and implementation of a university course registration system. It enables students to search and register courses efficiently under each department’s regulations. It also provides the information of students’ previous registration history and generates a certificate.

Set up for the Course Registration system:
1. Firstly, run 'final project_DDL.sql' to create database, including Table-level CHECK Constraints, Computed Columns based on a function and Non-clustered indexes.
2. Then, run 'final project_DML.sql' to populate data.

Using this system:
In 'stored procedure, views and triggers.sql', we defined five stored procedures for searching data. Also, three views for displaying data and two triggers for audit update of data and control insertion of data.

All of them have been tested and can run successfully while providing correct results.

Analysis the data:
"DashboardReports" folder contains all the dashboards and reports of CourseRegistration Database. We generated the visualization of data in our system using Tableau. The relationship of Registration with many factors, including campus, date, section, major, advisor, student, course, instructor and classroom are analyzed and displayed in the form of histogram. Thus, the performance of the database is demonstrated vividly and clearly.
