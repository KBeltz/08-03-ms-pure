json.array!(@shifts) do |shift|
  json.extract! shift, :id, :user_id, :location_id, :weather_id, :time, :date
  json.url shift_url(shift, format: :json)
end
