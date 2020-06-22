-- Get all of the students without a gmail.com and without a phone number.
SELECT name, email, id, cohort_id
FROM students
WHERE email NOT LIKE '%gmail%' AND phone IS NULL;