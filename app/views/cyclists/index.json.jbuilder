json.array!(@cyclists) do |cyclist|
  json.extract! cyclist, :id, :female_with_helmet, :female_no_helmet, :female_sidewalk, :female_wrong_way, :male_with_helmet, :male_no_helmet, :male_sidewalk, :male_wrong_way
  json.url cyclist_url(cyclist, format: :json)
end
