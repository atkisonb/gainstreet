json.array!(@funds) do |fund|
  json.extract! fund, :id, :fund_name, :fund_description, :fund_strategy, :strategy_why_i_buy, :strategy_why_i_sell, :strategy_allocation_discipline, :strategy_other_notes, :nav_shares, :user_account_id, :fund_manager_id
  json.url fund_url(fund, format: :json)
end
