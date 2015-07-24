json.array!(@pedestrians) do |pedestrian|
  json.extract! pedestrian, :id, :female, :male, :disabled, :other
  json.url pedestrian_url(pedestrian, format: :json)
end
