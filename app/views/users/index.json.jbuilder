json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_hash, :password_salt, :first_name, :last_name
  json.url user_url(user, format: :json)
end
