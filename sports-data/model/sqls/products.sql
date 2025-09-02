SELECT
  pd.product_key,
  pd.product_subcategory_key,
  pd.product_sku,
  pd.product_name,
  pd.model_name,
  pd.product_description,
  pd.product_color,
  pd.product_size,
  pd.product_style,
  pd.product_cost,
  pd.product_price,
  pdsc.subcategory_name AS product_subcategory_name, 
  pdsc.product_category_key,
  pdc.category_name AS product_category_name
FROM
  icebase.sports.products AS pd
LEFT JOIN icebase.sports.product_sub_category AS pdsc ON pd.product_subcategory_key = pdsc.product_subcategory_key
LEFT JOIN icebase.sports.product_category AS pdc ON pdc.product_category_key = pdsc.product_category_key