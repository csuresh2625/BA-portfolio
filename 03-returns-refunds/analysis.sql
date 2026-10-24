-- Import synthetic_data.csv as table orders in SQLite.
SELECT COUNT(*) AS orders,SUM(returned) AS returned,
 ROUND(100.0*SUM(returned)/COUNT(*),1) AS return_rate_pct FROM orders;
SELECT category,COUNT(*) AS orders,SUM(returned) AS returns,
 ROUND(100.0*SUM(returned)/COUNT(*),1) AS return_rate_pct
 FROM orders GROUP BY category ORDER BY return_rate_pct DESC;
SELECT return_reason,COUNT(*) AS returns,ROUND(AVG(refund_days),2) AS avg_refund_days
 FROM orders WHERE returned=1 GROUP BY return_reason ORDER BY returns DESC;
SELECT channel,COUNT(*) AS returns,ROUND(AVG(refund_days),2) AS avg_days,
 ROUND(100.0*SUM(CAST(refund_sla_met AS INTEGER))/COUNT(*),1) AS refund_sla_pct
 FROM orders WHERE returned=1 GROUP BY channel ORDER BY avg_days DESC;
