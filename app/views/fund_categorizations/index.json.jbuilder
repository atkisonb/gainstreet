json.array!(@fund_categorizations) do |fund_categorization|
  json.extract! fund_categorization, :id, :fundstore_category_id, :fund_id
  json.url fund_categorization_url(fund_categorization, format: :json)
end
