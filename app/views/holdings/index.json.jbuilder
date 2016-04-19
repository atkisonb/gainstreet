json.array!(@holdings) do |holding|
  json.extract! holding, :id, :shares, :stock_id, :fund_id
  json.url holding_url(holding, format: :json)
end
