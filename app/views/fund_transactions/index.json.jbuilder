json.array!(@fund_transactions) do |fund_transaction|
  json.extract! fund_transaction, :id, :market_shares, :amount, :market_action, :stock_id, :fund_id
  json.url fund_transaction_url(fund_transaction, format: :json)
end
