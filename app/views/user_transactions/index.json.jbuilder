json.array!(@user_transactions) do |user_transaction|
  json.extract! user_transaction, :id, :transaction_dollar_amount, :issued_nav_shares, :user_action, :user_account_id, :fund_id
  json.url user_transaction_url(user_transaction, format: :json)
end
