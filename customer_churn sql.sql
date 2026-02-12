SELECT 
    COUNT(*) AS total_customers,
    SUM(churn_risk_score) AS total_churned,
    ROUND(AVG(churn_risk_score) * 100, 2) AS churn_rate_percent
FROM churn;


SELECT 
    membership_category,
    COUNT(*) AS total_customers,
    ROUND(AVG(churn_risk_score)*100,2) AS churn_rate
FROM churn
GROUP BY membership_category
ORDER BY churn_rate DESC;

SELECT 
    region_category,
    ROUND(AVG(churn_risk_score)*100,2) AS churn_rate
FROM churn
GROUP BY region_category
ORDER BY churn_rate DESC;

SELECT 
    past_complaint,
    complaint_status,
    ROUND(AVG(churn_risk_score)*100,2) AS churn_rate
FROM churn
GROUP BY past_complaint, complaint_status
ORDER BY churn_rate DESC;

SELECT 
    CASE 
        WHEN avg_transaction_value > 5000 THEN 'High Value'
        ELSE 'Low Value'
    END AS customer_segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(churn_risk_score)*100,2) AS churn_rate
FROM churn
GROUP BY customer_segment;

SELECT 
    CASE 
        WHEN tenure_days < 180 THEN 'New Customers'
        WHEN tenure_days BETWEEN 180 AND 365 THEN 'Mid-term'
        ELSE 'Long-term'
    END AS tenure_group,
    ROUND(AVG(churn_risk_score)*100,2) AS churn_rate
FROM churn
GROUP BY tenure_group
ORDER BY churn_rate DESC;

