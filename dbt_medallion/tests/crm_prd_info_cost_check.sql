SELECT *
FROM {{ ref('crm_prd_info') }}
WHERE prd_cost < 0 OR prd_cost IS NULL