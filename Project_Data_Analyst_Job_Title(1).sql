SELECT *
FROM data_analyst_jobs;

--1. How many rows are in the data_analyst_jobs table?
SELECT COUNT(data_analyst_jobs)
FROM data_analyst_jobs;
--1793

--2. What company is associated with the job posting on the 10th row?
SELECT company
FROM data_analyst_jobs
LIMIT 10;
--ExxonMobil

--3.How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT COUNT(days_since_posting)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
-- TN=21, KY=6, TOTAL: 27

--4. How many postings in Tennessee have a star rating above 4?
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE location = 'TN'AND star_rating > 4;
--answer: 3

--5. How many postings in the dataset have a review count between 500 and 1000?
SELECT COUNT(days_since_posting)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--answer: 151

--6.
SELECT location GROUP BY location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs;

