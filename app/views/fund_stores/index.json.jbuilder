json.array!(@fund_stores) do |fund_store|
  json.extract! fund_store, :id
  json.url fund_store_url(fund_store, format: :json)
end
