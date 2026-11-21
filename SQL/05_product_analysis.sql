
--This is a comment!
/*
Review Analysis Findings

Review Distribution:

5 Stars = 57,328
4 Stars = 19,142
3 Stars = 8,179
2 Stars = 3,151
1 Star  = 11,424

Insights:

- Nearly 58% of all reviews were 5-star ratings.
- More than 77% of reviews were 4 or 5 stars.
- Customer satisfaction appears generally strong.
- Over 11,000 one-star reviews suggest opportunities to improve customer experience.
*/

-- Review Score Distribution

SELECT
    review_score,
    COUNT(*) AS review_count
FROM reviews
GROUP BY review_score
ORDER BY review_score;