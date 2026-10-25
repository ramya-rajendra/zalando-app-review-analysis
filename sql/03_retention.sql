WITH first_seen AS (
  SELECT user_pseudo_id,
         DATE_TRUNC(MIN(PARSE_DATE('%Y%m%d', event_date)), WEEK) AS cohort_week
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  GROUP BY user_pseudo_id
),
activity AS (
  SELECT DISTINCT user_pseudo_id,
         DATE_TRUNC(PARSE_DATE('%Y%m%d', event_date), WEEK) AS active_week
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
)
SELECT f.cohort_week,
       DATE_DIFF(a.active_week, f.cohort_week, WEEK) AS week_number,
       COUNT(DISTINCT a.user_pseudo_id) AS users
FROM first_seen f
JOIN activity a USING (user_pseudo_id)
GROUP BY 1, 2
ORDER BY 1, 2
