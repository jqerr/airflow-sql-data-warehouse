SELECT *
FROM {{ ref('crm_prd_info') }}
WHERE prd_nm != TRIM(prd_nm)