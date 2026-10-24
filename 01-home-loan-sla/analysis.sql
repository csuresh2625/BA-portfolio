-- Run in SQLite after importing synthetic_data.csv as table loan_applications.
SELECT COUNT(*) AS applications, ROUND(AVG(total_days),2) AS avg_days,
 ROUND(100.0*SUM(sla_met)/COUNT(*),1) AS sla_met_pct FROM loan_applications;
SELECT channel,COUNT(*) AS cases,ROUND(AVG(total_days),2) AS avg_days,
 ROUND(100.0*SUM(sla_met)/COUNT(*),1) AS sla_met_pct
 FROM loan_applications GROUP BY channel ORDER BY avg_days DESC;
SELECT missing_documents,COUNT(*) AS cases,ROUND(AVG(total_days),2) AS avg_days
 FROM loan_applications GROUP BY missing_documents;
SELECT branch,COUNT(*) AS cases,ROUND(AVG(underwriting_days),2) AS underwriting_days
 FROM loan_applications GROUP BY branch ORDER BY underwriting_days DESC;
