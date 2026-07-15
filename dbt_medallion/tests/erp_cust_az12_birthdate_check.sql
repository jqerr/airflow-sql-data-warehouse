SELECT *
FROM {{ ref('erp_cust_az12') }}
WHERE bdate < '1900-01-01' OR bdate > current_date()