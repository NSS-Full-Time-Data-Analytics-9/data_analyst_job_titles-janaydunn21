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
SELECT location AS state, AVG(star_rating) AS average_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY AVG(star_rating)DESC;
--answer: NE

--7. Select unique job titles from the data_analyst_jobs table. How many are there?
SELECT COUNT(DISTINCT title) 
FROM data_analyst_jobs;
--answer: 881

--8. How many unique job titles are there for California companies?
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location= 'CA';
--answer: 230

--9. Find the name of each company?
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL 
GROUP BY company;
--answer: 40

--10. What is that rating?
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER by AVG(star_rating) DESC;
--General Motors, Unilever, Microsoft, Nike (rating 4.1)

--11.Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
--774

--12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
SELECT DISTINCT title 
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';
-- 4

--BONUS-
SELECT COUNT(title), domain
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' 
AND domain IS NOT NULL
AND days_since_posting > 21
GROUP BY domain
ORDER BY COUNT(title) DESC
LIMIT 4;
--Internet and Software, Banks and Financial Services, Consulting and Business Services, Health Care 


