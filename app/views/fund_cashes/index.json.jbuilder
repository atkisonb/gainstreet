json.array!(@fund_cashes) do |fund_cash|
  json.extract! fund_cash, :id, :amount, :fund_id
  json.url fund_cash_url(fund_cash, format: :json)
end
