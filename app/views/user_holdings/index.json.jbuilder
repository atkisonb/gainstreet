json.array!(@user_holdings) do |user_holding|
  json.extract! user_holding, :id, :nav_shares_owned, :amount_invested, :user_account_id, :fund_id
  json.url user_holding_url(user_holding, format: :json)
end
