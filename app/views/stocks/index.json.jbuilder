json.array!(@stocks) do |stock|
  json.extract! stock, :id, :stock_ticker, :stock_company, :stock_exchange, :fund_id
  json.url stock_url(stock, format: :json)
end
