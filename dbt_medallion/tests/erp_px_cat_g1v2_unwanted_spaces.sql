SELECT *
FROM {{ ref('erp_px_cat_g1v2') }}
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance)