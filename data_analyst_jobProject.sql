--1. How many row are in the data-anaylyst-jobs table?
SELECT *
FROM data_analyst_jobs;
--answer: 1794

--2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--answer: XTO Land Data Analyst

--3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT location
FROM data_analyst_jobs
WHERE location='TN' OR location='KY';
--answer: 21, TN and 6, KY, total: 27

--4.How many postings in Tennessee have a star rating above 4?
SELECT star_rating, location
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating::float > 4;
--answer: 3

--5.	How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count ::float BETWEEN 500 AND 1000;



 
