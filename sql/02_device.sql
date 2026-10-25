SELECT
  device.category AS device,
  COUNT(DISTINCT IF(event_name='view_item', user_pseudo_id, NULL))      AS viewed,
  COUNT(DISTINCT IF(event_name='add_to_cart', user_pseudo_id, NULL))    AS added_to_cart,
  COUNT(DISTINCT IF(event_name='begin_checkout', user_pseudo_id, NULL)) AS checkout,
  COUNT(DISTINCT IF(event_name='purchase', user_pseudo_id, NULL))       AS purchased
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY device
ORDER BY viewed DESC
