json.array!(@user_accounts) do |user_account|
  json.extract! user_account, :id, :account_type_id, :user_account_number, :user_id, :fund_id
  json.url user_account_url(user_account, format: :json)
end
