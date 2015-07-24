json.array!(@locations) do |location|
  json.extract! location, :id, :location_name, :url
  json.url location_url(location, format: :json)
end
