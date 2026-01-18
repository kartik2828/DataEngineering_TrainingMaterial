-- Table Name : people-100
-- Database Name: XYZ

-- Basic SELECT: Retrieve the first name, last name, and email of all individuals from the table.

select first_name, last_name, email from [dbo].[people-100]

-- Using WHERE: Find all records where the sex is 'Female'.
select * from [dbo].[people-100] where sex = 'Female'

-- SELECT with DISTINCT: Get a list of unique job titles in the table.
select distinct job_title from [dbo].[people-100]

-- WHERE with Condition: Retrieve the first name, last name, and date of birth for individuals born after January 1, 2000.

select first_name, last_name, date_of_birth from [dbo].[people-100] where date_of_birth>'2000-01-01'

-- WHERE with Condition: Retrieve the first name, last name, and date of birth for individuals born after 2002.
select first_name, last_name, date_of_birth from [dbo].[people-100] where date_of_birth> '2017'

-- SELECT Specific Columns with WHERE: Find the user ID and phone number for individuals with the job title 'Retail banker'
select USER_ID, phone from [dbo].[people-100] where job_title ='Retail banker'

-- DISTINCT with WHERE: Get unique first names of individuals who are male.
select distinct first_name from [dbo].[people-100] where sex = 'male'

-- WHERE with Multiple Conditions: Retrieve all details for individuals who are female and have a job title of 'Biochemist, clinical'.
select * from [dbo].[people-100] where sex = 'female' and job_title = 'Biochemist, clinical'

-- SELECT with Pattern Matching in WHERE: Find the first name, last name, and email for individuals whose email domain is 'example.net'.
select first_name, last_name, email from [dbo].[people-100] where email like '%example.net'

-- DISTINCT with Multiple Columns: Get unique combinations of sex and job title from the table.
select distinct sex, job_title from [dbo].[people-100]

-- WHERE with Date Range: Retrieve the first name, last name, and job title for individuals born between January 1, 1950, and December 31, 1990.
select first_name, last_name, job_title from [dbo].[people-100] where date_of_birth between '1950-01-01' and '1990-12-31'