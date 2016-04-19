json.array!(@fundstore_categories) do |fundstore_category|
  json.extract! fundstore_category, :id, :category_heading, :category_subheading, :fund_store_id, :fund_id
  json.url fundstore_category_url(fundstore_category, format: :json)
end
