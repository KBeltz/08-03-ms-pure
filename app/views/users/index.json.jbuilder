json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :admin, :location_id
  json.url user_url(user, format: :json)
end
