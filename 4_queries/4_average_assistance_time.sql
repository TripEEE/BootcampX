-- Get the average time of an assistance request.
-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)


--subtract completed_at by created_at
--count all assistance requests
--divide the subtracted number by all assistance requests
SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;


