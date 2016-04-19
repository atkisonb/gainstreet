json.array!(@fund_managers) do |fund_manager|
  json.extract! fund_manager, :id, :first_name, :last_name, :manager_email, :about, :manager_facebook, :manager_instagram, :manager_location, :manager_school, :manager_twitter, :manager_years_experience
  json.url fund_manager_url(fund_manager, format: :json)
end
