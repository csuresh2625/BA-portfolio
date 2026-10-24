-- Import synthetic_data.csv as table change_requests in SQLite.
SELECT COUNT(*) AS requests, ROUND(AVG(cycle_days),2) AS avg_cycle_days,
 ROUND(100.0*SUM(sla_met)/COUNT(*),1) AS sla_met_pct FROM change_requests;
SELECT request_type,COUNT(*) AS requests,ROUND(AVG(cycle_days),2) AS avg_days,
 ROUND(100.0*SUM(sla_met)/COUNT(*),1) AS sla_met_pct
 FROM change_requests GROUP BY request_type ORDER BY avg_days DESC;
SELECT project,SUM(estimated_cost_inr) AS estimate_inr,
 SUM(actual_cost_inr) AS actual_inr,SUM(cost_variance_inr) AS variance_inr
 FROM change_requests GROUP BY project ORDER BY variance_inr DESC;
SELECT owner_team,COUNT(*) AS requests,SUM(CASE WHEN cycle_days>7 THEN 1 ELSE 0 END) AS sla_breaches
 FROM change_requests GROUP BY owner_team ORDER BY sla_breaches DESC;
